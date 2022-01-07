; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_find_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_find_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32 }
%struct.tipc_node = type { %struct.link** }
%struct.link_name = type { i32, i32 }
%struct.bearer = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.link* (i8*, %struct.tipc_node**)* @link_find_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.link* @link_find_link(i8* %0, %struct.tipc_node** %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tipc_node**, align 8
  %6 = alloca %struct.link_name, align 4
  %7 = alloca %struct.bearer*, align 8
  %8 = alloca %struct.link*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tipc_node** %1, %struct.tipc_node*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @link_name_validate(i8* %9, %struct.link_name* %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.link* null, %struct.link** %3, align 8
  br label %51

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.link_name, %struct.link_name* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bearer* @tipc_bearer_find_interface(i32 %15)
  store %struct.bearer* %16, %struct.bearer** %7, align 8
  %17 = load %struct.bearer*, %struct.bearer** %7, align 8
  %18 = icmp ne %struct.bearer* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store %struct.link* null, %struct.link** %3, align 8
  br label %51

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.link_name, %struct.link_name* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.tipc_node* @tipc_node_find(i32 %22)
  %24 = load %struct.tipc_node**, %struct.tipc_node*** %5, align 8
  store %struct.tipc_node* %23, %struct.tipc_node** %24, align 8
  %25 = load %struct.tipc_node**, %struct.tipc_node*** %5, align 8
  %26 = load %struct.tipc_node*, %struct.tipc_node** %25, align 8
  %27 = icmp ne %struct.tipc_node* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store %struct.link* null, %struct.link** %3, align 8
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.tipc_node**, %struct.tipc_node*** %5, align 8
  %31 = load %struct.tipc_node*, %struct.tipc_node** %30, align 8
  %32 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %31, i32 0, i32 0
  %33 = load %struct.link**, %struct.link*** %32, align 8
  %34 = load %struct.bearer*, %struct.bearer** %7, align 8
  %35 = getelementptr inbounds %struct.bearer, %struct.bearer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.link*, %struct.link** %33, i64 %36
  %38 = load %struct.link*, %struct.link** %37, align 8
  store %struct.link* %38, %struct.link** %8, align 8
  %39 = load %struct.link*, %struct.link** %8, align 8
  %40 = icmp ne %struct.link* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.link*, %struct.link** %8, align 8
  %43 = getelementptr inbounds %struct.link, %struct.link* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @strcmp(i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %29
  store %struct.link* null, %struct.link** %3, align 8
  br label %51

49:                                               ; preds = %41
  %50 = load %struct.link*, %struct.link** %8, align 8
  store %struct.link* %50, %struct.link** %3, align 8
  br label %51

51:                                               ; preds = %49, %48, %28, %19, %12
  %52 = load %struct.link*, %struct.link** %3, align 8
  ret %struct.link* %52
}

declare dso_local i32 @link_name_validate(i8*, %struct.link_name*) #1

declare dso_local %struct.bearer* @tipc_bearer_find_interface(i32) #1

declare dso_local %struct.tipc_node* @tipc_node_find(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

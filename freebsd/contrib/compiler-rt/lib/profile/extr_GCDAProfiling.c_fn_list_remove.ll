; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_fn_list_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_fn_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_list = type { %struct.fn_node*, %struct.fn_node* }
%struct.fn_node = type { i64, %struct.fn_node* }

@CURRENT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fn_list*)* @fn_list_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_list_remove(%struct.fn_list* %0) #0 {
  %2 = alloca %struct.fn_list*, align 8
  %3 = alloca %struct.fn_node*, align 8
  %4 = alloca %struct.fn_node*, align 8
  %5 = alloca %struct.fn_node*, align 8
  store %struct.fn_list* %0, %struct.fn_list** %2, align 8
  %6 = load %struct.fn_list*, %struct.fn_list** %2, align 8
  %7 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %6, i32 0, i32 1
  %8 = load %struct.fn_node*, %struct.fn_node** %7, align 8
  store %struct.fn_node* %8, %struct.fn_node** %3, align 8
  store %struct.fn_node* null, %struct.fn_node** %4, align 8
  store %struct.fn_node* null, %struct.fn_node** %5, align 8
  br label %9

9:                                                ; preds = %53, %1
  %10 = load %struct.fn_node*, %struct.fn_node** %3, align 8
  %11 = icmp ne %struct.fn_node* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %9
  %13 = load %struct.fn_node*, %struct.fn_node** %3, align 8
  %14 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %13, i32 0, i32 1
  %15 = load %struct.fn_node*, %struct.fn_node** %14, align 8
  store %struct.fn_node* %15, %struct.fn_node** %5, align 8
  %16 = load %struct.fn_node*, %struct.fn_node** %3, align 8
  %17 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CURRENT_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %12
  %22 = load %struct.fn_node*, %struct.fn_node** %3, align 8
  %23 = load %struct.fn_list*, %struct.fn_list** %2, align 8
  %24 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %23, i32 0, i32 1
  %25 = load %struct.fn_node*, %struct.fn_node** %24, align 8
  %26 = icmp eq %struct.fn_node* %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  %29 = load %struct.fn_list*, %struct.fn_list** %2, align 8
  %30 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %29, i32 0, i32 1
  store %struct.fn_node* %28, %struct.fn_node** %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.fn_node*, %struct.fn_node** %3, align 8
  %33 = load %struct.fn_list*, %struct.fn_list** %2, align 8
  %34 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %33, i32 0, i32 0
  %35 = load %struct.fn_node*, %struct.fn_node** %34, align 8
  %36 = icmp eq %struct.fn_node* %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.fn_node*, %struct.fn_node** %4, align 8
  %39 = load %struct.fn_list*, %struct.fn_list** %2, align 8
  %40 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %39, i32 0, i32 0
  store %struct.fn_node* %38, %struct.fn_node** %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.fn_node*, %struct.fn_node** %4, align 8
  %43 = icmp ne %struct.fn_node* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  %46 = load %struct.fn_node*, %struct.fn_node** %4, align 8
  %47 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %46, i32 0, i32 1
  store %struct.fn_node* %45, %struct.fn_node** %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.fn_node*, %struct.fn_node** %3, align 8
  %50 = call i32 @free(%struct.fn_node* %49)
  br label %53

51:                                               ; preds = %12
  %52 = load %struct.fn_node*, %struct.fn_node** %3, align 8
  store %struct.fn_node* %52, %struct.fn_node** %4, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  store %struct.fn_node* %54, %struct.fn_node** %3, align 8
  br label %9

55:                                               ; preds = %9
  ret void
}

declare dso_local i32 @free(%struct.fn_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_attach_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_attach_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.tipc_node = type { i32, %struct.link**, i32 }
%struct.link = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Attempt to create third link to %s\0A\00", align 1
@tipc_net = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Attempt to establish second link on <%s> to %s \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_node* @tipc_node_attach_link(%struct.link* %0) #0 {
  %2 = alloca %struct.tipc_node*, align 8
  %3 = alloca %struct.link*, align 8
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.link* %0, %struct.link** %3, align 8
  %7 = load %struct.link*, %struct.link** %3, align 8
  %8 = getelementptr inbounds %struct.link, %struct.link* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.tipc_node* @tipc_node_find(i32 %9)
  store %struct.tipc_node* %10, %struct.tipc_node** %4, align 8
  %11 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %12 = icmp ne %struct.tipc_node* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.link*, %struct.link** %3, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.tipc_node* @tipc_node_create(i32 %16)
  store %struct.tipc_node* %17, %struct.tipc_node** %4, align 8
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %20 = icmp ne %struct.tipc_node* %19, null
  br i1 %20, label %21, label %81

21:                                               ; preds = %18
  %22 = load %struct.link*, %struct.link** %3, align 8
  %23 = getelementptr inbounds %struct.link, %struct.link* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %28 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %33 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %34 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @addr_string_fill(i8* %32, i32 %35)
  %37 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  store %struct.tipc_node* null, %struct.tipc_node** %2, align 8
  br label %82

38:                                               ; preds = %21
  %39 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %40 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %39, i32 0, i32 1
  %41 = load %struct.link**, %struct.link*** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.link*, %struct.link** %41, i64 %42
  %44 = load %struct.link*, %struct.link** %43, align 8
  %45 = icmp ne %struct.link* %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %38
  %47 = load %struct.link*, %struct.link** %3, align 8
  %48 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %49 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %48, i32 0, i32 1
  %50 = load %struct.link**, %struct.link*** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.link*, %struct.link** %50, i64 %51
  store %struct.link* %47, %struct.link** %52, align 8
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tipc_net, i32 0, i32 0), align 8
  %54 = load %struct.link*, %struct.link** %3, align 8
  %55 = getelementptr inbounds %struct.link, %struct.link* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @tipc_zone(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %53, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %64 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  store %struct.tipc_node* %67, %struct.tipc_node** %2, align 8
  br label %82

68:                                               ; preds = %38
  %69 = load %struct.link*, %struct.link** %3, align 8
  %70 = getelementptr inbounds %struct.link, %struct.link* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %76 = load %struct.link*, %struct.link** %3, align 8
  %77 = getelementptr inbounds %struct.link, %struct.link* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @addr_string_fill(i8* %75, i32 %78)
  %80 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %68, %18
  store %struct.tipc_node* null, %struct.tipc_node** %2, align 8
  br label %82

82:                                               ; preds = %81, %46, %31
  %83 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  ret %struct.tipc_node* %83
}

declare dso_local %struct.tipc_node* @tipc_node_find(i32) #1

declare dso_local %struct.tipc_node* @tipc_node_create(i32) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @addr_string_fill(i8*, i32) #1

declare dso_local i64 @tipc_zone(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

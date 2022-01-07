; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_link_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, %struct.link** }
%struct.link = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Established link <%s> on network plane %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" link %x into %x/%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"New link <%s> becomes standby\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Old link <%s> becomes standby\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_node_link_up(%struct.tipc_node* %0, %struct.link* %1) #0 {
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.link**, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %3, align 8
  store %struct.link* %1, %struct.link** %4, align 8
  %6 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %7 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %6, i32 0, i32 1
  %8 = load %struct.link**, %struct.link*** %7, align 8
  %9 = getelementptr inbounds %struct.link*, %struct.link** %8, i64 0
  store %struct.link** %9, %struct.link*** %5, align 8
  %10 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.link*, %struct.link** %4, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.link*, %struct.link** %4, align 8
  %18 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  %23 = load %struct.link**, %struct.link*** %5, align 8
  %24 = getelementptr inbounds %struct.link*, %struct.link** %23, i64 0
  %25 = load %struct.link*, %struct.link** %24, align 8
  %26 = icmp ne %struct.link* %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %2
  %28 = load %struct.link*, %struct.link** %4, align 8
  %29 = load %struct.link**, %struct.link*** %5, align 8
  %30 = getelementptr inbounds %struct.link*, %struct.link** %29, i64 0
  %31 = load %struct.link**, %struct.link*** %5, align 8
  %32 = getelementptr inbounds %struct.link*, %struct.link** %31, i64 1
  %33 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.link* %28, %struct.link** %30, %struct.link** %32)
  %34 = load %struct.link*, %struct.link** %4, align 8
  %35 = load %struct.link**, %struct.link*** %5, align 8
  %36 = getelementptr inbounds %struct.link*, %struct.link** %35, i64 1
  store %struct.link* %34, %struct.link** %36, align 8
  %37 = load %struct.link**, %struct.link*** %5, align 8
  %38 = getelementptr inbounds %struct.link*, %struct.link** %37, i64 0
  store %struct.link* %34, %struct.link** %38, align 8
  %39 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %40 = call i32 @node_established_contact(%struct.tipc_node* %39)
  br label %102

41:                                               ; preds = %2
  %42 = load %struct.link*, %struct.link** %4, align 8
  %43 = getelementptr inbounds %struct.link, %struct.link* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.link**, %struct.link*** %5, align 8
  %46 = getelementptr inbounds %struct.link*, %struct.link** %45, i64 0
  %47 = load %struct.link*, %struct.link** %46, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %44, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.link*, %struct.link** %4, align 8
  %53 = getelementptr inbounds %struct.link, %struct.link* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, ...) @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %102

56:                                               ; preds = %41
  %57 = load %struct.link**, %struct.link*** %5, align 8
  %58 = getelementptr inbounds %struct.link*, %struct.link** %57, i64 0
  %59 = load %struct.link*, %struct.link** %58, align 8
  %60 = load %struct.link*, %struct.link** %4, align 8
  %61 = call i32 @tipc_link_send_duplicate(%struct.link* %59, %struct.link* %60)
  %62 = load %struct.link*, %struct.link** %4, align 8
  %63 = getelementptr inbounds %struct.link, %struct.link* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.link**, %struct.link*** %5, align 8
  %66 = getelementptr inbounds %struct.link*, %struct.link** %65, i64 0
  %67 = load %struct.link*, %struct.link** %66, align 8
  %68 = getelementptr inbounds %struct.link, %struct.link* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %64, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %56
  %72 = load %struct.link*, %struct.link** %4, align 8
  %73 = load %struct.link**, %struct.link*** %5, align 8
  %74 = getelementptr inbounds %struct.link*, %struct.link** %73, i64 0
  store %struct.link* %72, %struct.link** %74, align 8
  br label %102

75:                                               ; preds = %56
  %76 = load %struct.link**, %struct.link*** %5, align 8
  %77 = getelementptr inbounds %struct.link*, %struct.link** %76, i64 0
  %78 = load %struct.link*, %struct.link** %77, align 8
  %79 = getelementptr inbounds %struct.link, %struct.link* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, i32, ...) @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load %struct.link**, %struct.link*** %5, align 8
  %83 = getelementptr inbounds %struct.link*, %struct.link** %82, i64 1
  %84 = load %struct.link*, %struct.link** %83, align 8
  %85 = load %struct.link**, %struct.link*** %5, align 8
  %86 = getelementptr inbounds %struct.link*, %struct.link** %85, i64 0
  %87 = load %struct.link*, %struct.link** %86, align 8
  %88 = icmp ne %struct.link* %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = load %struct.link**, %struct.link*** %5, align 8
  %91 = getelementptr inbounds %struct.link*, %struct.link** %90, i64 1
  %92 = load %struct.link*, %struct.link** %91, align 8
  %93 = getelementptr inbounds %struct.link, %struct.link* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, i32, ...) @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %89, %75
  %97 = load %struct.link*, %struct.link** %4, align 8
  %98 = load %struct.link**, %struct.link*** %5, align 8
  %99 = getelementptr inbounds %struct.link*, %struct.link** %98, i64 1
  store %struct.link* %97, %struct.link** %99, align 8
  %100 = load %struct.link**, %struct.link*** %5, align 8
  %101 = getelementptr inbounds %struct.link*, %struct.link** %100, i64 0
  store %struct.link* %97, %struct.link** %101, align 8
  br label %102

102:                                              ; preds = %96, %71, %51, %27
  ret void
}

declare dso_local i32 @info(i8*, i32, ...) #1

declare dso_local i32 @dbg(i8*, %struct.link*, %struct.link**, %struct.link**) #1

declare dso_local i32 @node_established_contact(%struct.tipc_node*) #1

declare dso_local i32 @tipc_link_send_duplicate(%struct.link*, %struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

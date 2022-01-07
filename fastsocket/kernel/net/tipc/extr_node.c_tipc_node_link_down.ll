; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_link_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { %struct.link**, i32 }
%struct.link = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Lost standby link <%s> on network plane %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Lost link <%s> on network plane %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_node_link_down(%struct.tipc_node* %0, %struct.link* %1) #0 {
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.link**, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %3, align 8
  store %struct.link* %1, %struct.link** %4, align 8
  %6 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %7 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 8
  %10 = load %struct.link*, %struct.link** %4, align 8
  %11 = call i32 @tipc_link_is_active(%struct.link* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.link*, %struct.link** %4, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.link*, %struct.link** %4, align 8
  %18 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  br label %79

23:                                               ; preds = %2
  %24 = load %struct.link*, %struct.link** %4, align 8
  %25 = getelementptr inbounds %struct.link, %struct.link* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.link*, %struct.link** %4, align 8
  %28 = getelementptr inbounds %struct.link, %struct.link* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %31)
  %33 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %34 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %33, i32 0, i32 0
  %35 = load %struct.link**, %struct.link*** %34, align 8
  %36 = getelementptr inbounds %struct.link*, %struct.link** %35, i64 0
  store %struct.link** %36, %struct.link*** %5, align 8
  %37 = load %struct.link**, %struct.link*** %5, align 8
  %38 = getelementptr inbounds %struct.link*, %struct.link** %37, i64 0
  %39 = load %struct.link*, %struct.link** %38, align 8
  %40 = load %struct.link*, %struct.link** %4, align 8
  %41 = icmp eq %struct.link* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %23
  %43 = load %struct.link**, %struct.link*** %5, align 8
  %44 = getelementptr inbounds %struct.link*, %struct.link** %43, i64 1
  %45 = load %struct.link*, %struct.link** %44, align 8
  %46 = load %struct.link**, %struct.link*** %5, align 8
  %47 = getelementptr inbounds %struct.link*, %struct.link** %46, i64 0
  store %struct.link* %45, %struct.link** %47, align 8
  br label %48

48:                                               ; preds = %42, %23
  %49 = load %struct.link**, %struct.link*** %5, align 8
  %50 = getelementptr inbounds %struct.link*, %struct.link** %49, i64 1
  %51 = load %struct.link*, %struct.link** %50, align 8
  %52 = load %struct.link*, %struct.link** %4, align 8
  %53 = icmp eq %struct.link* %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.link**, %struct.link*** %5, align 8
  %56 = getelementptr inbounds %struct.link*, %struct.link** %55, i64 0
  %57 = load %struct.link*, %struct.link** %56, align 8
  %58 = load %struct.link**, %struct.link*** %5, align 8
  %59 = getelementptr inbounds %struct.link*, %struct.link** %58, i64 1
  store %struct.link* %57, %struct.link** %59, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.link**, %struct.link*** %5, align 8
  %62 = getelementptr inbounds %struct.link*, %struct.link** %61, i64 0
  %63 = load %struct.link*, %struct.link** %62, align 8
  %64 = load %struct.link*, %struct.link** %4, align 8
  %65 = icmp eq %struct.link* %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %68 = call i32 @node_select_active_links(%struct.tipc_node* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %71 = call i64 @tipc_node_is_up(%struct.tipc_node* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.link*, %struct.link** %4, align 8
  %75 = call i32 @tipc_link_changeover(%struct.link* %74)
  br label %79

76:                                               ; preds = %69
  %77 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %78 = call i32 @node_lost_contact(%struct.tipc_node* %77)
  br label %79

79:                                               ; preds = %13, %76, %73
  ret void
}

declare dso_local i32 @tipc_link_is_active(%struct.link*) #1

declare dso_local i32 @info(i8*, i32, i32) #1

declare dso_local i32 @node_select_active_links(%struct.tipc_node*) #1

declare dso_local i64 @tipc_node_is_up(%struct.tipc_node*) #1

declare dso_local i32 @tipc_link_changeover(%struct.link*) #1

declare dso_local i32 @node_lost_contact(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

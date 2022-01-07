; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_get_node_by_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_get_node_by_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @get_node_by_ref(%struct.node* %0, i8* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @streq(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %10, %struct.node** %3, align 8
  br label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.node*, %struct.node** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.node* @get_node_by_path(%struct.node* %18, i8* %19)
  store %struct.node* %20, %struct.node** %3, align 8
  br label %25

21:                                               ; preds = %11
  %22 = load %struct.node*, %struct.node** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.node* @get_node_by_label(%struct.node* %22, i8* %23)
  store %struct.node* %24, %struct.node** %3, align 8
  br label %25

25:                                               ; preds = %21, %17, %9
  %26 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %26
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local %struct.node* @get_node_by_path(%struct.node*, i8*) #1

declare dso_local %struct.node* @get_node_by_label(%struct.node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

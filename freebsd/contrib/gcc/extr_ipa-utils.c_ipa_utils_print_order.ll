; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-utils.c_ipa_utils_print_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-utils.c_ipa_utils_print_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"\0A\0A ordered call graph: %s\0A\00", align 1
@dump_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipa_utils_print_order(i32* %0, i8* %1, %struct.cgraph_node** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cgraph_node**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.cgraph_node** %2, %struct.cgraph_node*** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %26, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* @dump_file, align 4
  %20 = load %struct.cgraph_node**, %struct.cgraph_node*** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %20, i64 %22
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %23, align 8
  %25 = call i32 @dump_cgraph_node(i32 %19, %struct.cgraph_node* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  br label %15

29:                                               ; preds = %15
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @fflush(i32* %32)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @dump_cgraph_node(i32, %struct.cgraph_node*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_note_name_declared_in_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_note_name_declared_in_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@current_class_stack = common dso_local global %struct.TYPE_5__* null, align 8
@current_class_depth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"declaration of %q#D\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"changes meaning of %qD from %q+#D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @note_name_declared_in_class(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_class_stack, align 8
  %8 = load i32, i32* @current_class_depth, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %37

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = call %struct.TYPE_4__* @splay_tree_lookup(i32 %18, i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %6, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @OVL_CURRENT(i8* %27)
  %29 = call i32 @DECL_NAME(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %35)
  br label %37

37:                                               ; preds = %16, %24, %17
  ret void
}

declare dso_local %struct.TYPE_4__* @splay_tree_lookup(i32, i32) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @OVL_CURRENT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

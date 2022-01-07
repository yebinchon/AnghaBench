; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_get_canon_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_get_canon_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ARRAY_TYPE = common dso_local global i64 0, align 8
@type_to_canon_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @get_canon_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_canon_type(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @type_to_consider(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %3
  store i32* null, i32** %4, align 8
  br label %68

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @TYPE_MAIN_VARIANT(i32* %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %33, %21
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @POINTER_TYPE_P(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @TREE_CODE(i32* %27)
  %29 = load i64, i64* @ARRAY_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ true, %22 ], [ %30, %26 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @TREE_TYPE(i32* %34)
  %36 = call i32* @TYPE_MAIN_VARIANT(i32* %35)
  store i32* %36, i32** %5, align 8
  br label %22

37:                                               ; preds = %31
  br label %52

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @POINTER_TYPE_P(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @TREE_TYPE(i32* %47)
  %49 = call i32* @TYPE_MAIN_VARIANT(i32* %48)
  store i32* %49, i32** %5, align 8
  br label %42

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* @type_to_canon_type, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = ptrtoint i32* %54 to i32
  %56 = call %struct.TYPE_3__* @splay_tree_lookup(i32 %53, i32 %55)
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %8, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = icmp eq %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @discover_unique_type(i32* %60)
  store i32* %61, i32** %4, align 8
  br label %68

62:                                               ; preds = %52
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %62, %59, %15
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32 @type_to_consider(i32*) #1

declare dso_local i32* @TYPE_MAIN_VARIANT(i32*) #1

declare dso_local i64 @POINTER_TYPE_P(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local %struct.TYPE_3__* @splay_tree_lookup(i32, i32) #1

declare dso_local i32* @discover_unique_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

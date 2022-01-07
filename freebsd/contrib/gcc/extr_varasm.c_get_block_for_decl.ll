; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_get_block_for_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_get_block_for_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_block = type { i32 }

@VAR_DECL = common dso_local global i64 0, align 8
@SECTION_NOSWITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_block* (i32)* @get_block_for_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_block* @get_block_for_decl(i32 %0) #0 {
  %2 = alloca %struct.object_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @VAR_DECL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @DECL_EXTERNAL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store %struct.object_block* null, %struct.object_block** %2, align 8
  br label %50

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @DECL_ONE_ONLY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.object_block* null, %struct.object_block** %2, align 8
  br label %50

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32* @DECL_SIZE_UNIT(i32 %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.object_block* null, %struct.object_block** %2, align 8
  br label %50

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32* @DECL_SIZE_UNIT(i32 %26)
  %28 = call i32 @host_integerp(i32* %27, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.object_block* null, %struct.object_block** %2, align 8
  br label %50

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @TREE_CODE(i32 %32)
  %34 = load i64, i64* @VAR_DECL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @align_variable(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %3, align 4
  %41 = call i32* @get_variable_section(i32 %40, i32 1)
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @SECTION_STYLE(i32* %42)
  %44 = load i64, i64* @SECTION_NOSWITCH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store %struct.object_block* null, %struct.object_block** %2, align 8
  br label %50

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = call %struct.object_block* @get_block_for_section(i32* %48)
  store %struct.object_block* %49, %struct.object_block** %2, align 8
  br label %50

50:                                               ; preds = %47, %46, %30, %24, %18, %13
  %51 = load %struct.object_block*, %struct.object_block** %2, align 8
  ret %struct.object_block* %51
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @DECL_ONE_ONLY(i32) #1

declare dso_local i32* @DECL_SIZE_UNIT(i32) #1

declare dso_local i32 @host_integerp(i32*, i32) #1

declare dso_local i32 @align_variable(i32, i32) #1

declare dso_local i32* @get_variable_section(i32, i32) #1

declare dso_local i64 @SECTION_STYLE(i32*) #1

declare dso_local %struct.object_block* @get_block_for_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

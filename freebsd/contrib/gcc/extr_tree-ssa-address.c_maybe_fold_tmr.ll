; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_maybe_fold_tmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_maybe_fold_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_address = type { i8*, i8*, i8*, i8* }

@INTEGER_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i8* null, align 8
@MULT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @maybe_fold_tmr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mem_address, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @get_address_description(i8* %8, %struct.mem_address* %4)
  %10 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @TREE_CODE(i8* %15)
  %17 = load i64, i64* @INTEGER_CST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* @PLUS_EXPR, align 4
  %25 = load i32, i32* @sizetype, align 4
  %26 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @sizetype, align 4
  %29 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @fold_convert(i32 %28, i8* %30)
  %32 = call i8* @fold_binary_to_constant(i32 %24, i32 %25, i8* %27, i8* %31)
  %33 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  br label %38

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i8*, i8** @NULL_TREE, align 8
  %40 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %13, %1
  %42 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @TREE_CODE(i8* %47)
  %49 = load i64, i64* @INTEGER_CST, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %7, align 8
  %54 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32, i32* @MULT_EXPR, align 4
  %59 = load i32, i32* @sizetype, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @fold_binary_to_constant(i32 %58, i32 %59, i8* %60, i8* %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** @NULL_TREE, align 8
  %65 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 3
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %57, %51
  %67 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* @PLUS_EXPR, align 4
  %72 = load i32, i32* @sizetype, align 4
  %73 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i8* @fold_binary_to_constant(i32 %71, i32 %72, i8* %74, i8* %75)
  %77 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  br label %81

78:                                               ; preds = %66
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i8*, i8** @NULL_TREE, align 8
  %83 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %4, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %45, %41
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** @NULL_TREE, align 8
  store i8* %88, i8** %2, align 8
  br label %102

89:                                               ; preds = %84
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 @TREE_TYPE(i8* %90)
  %92 = call i8* @create_mem_ref_raw(i32 %91, %struct.mem_address* %4)
  store i8* %92, i8** %6, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** @NULL_TREE, align 8
  store i8* %96, i8** %2, align 8
  br label %102

97:                                               ; preds = %89
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @copy_mem_ref_info(i8* %98, i8* %99)
  %101 = load i8*, i8** %6, align 8
  store i8* %101, i8** %2, align 8
  br label %102

102:                                              ; preds = %97, %95, %87
  %103 = load i8*, i8** %2, align 8
  ret i8* %103
}

declare dso_local i32 @get_address_description(i8*, %struct.mem_address*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i8* @fold_binary_to_constant(i32, i32, i8*, i8*) #1

declare dso_local i8* @fold_convert(i32, i8*) #1

declare dso_local i8* @create_mem_ref_raw(i32, %struct.mem_address*) #1

declare dso_local i32 @TREE_TYPE(i8*) #1

declare dso_local i32 @copy_mem_ref_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

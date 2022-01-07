; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_get_filename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_get_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ustr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@UDF_FLAG_UTF8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed in udf_get_filename: sname = %s\0A\00", align 1
@UDF_FLAG_NLS_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_get_filename(%struct.super_block* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ustr*, align 8
  %11 = alloca %struct.ustr*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.ustr* @kmalloc(i32 8, i32 %13)
  store %struct.ustr* %14, %struct.ustr** %10, align 8
  %15 = load %struct.ustr*, %struct.ustr** %10, align 8
  %16 = icmp ne %struct.ustr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

18:                                               ; preds = %4
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.ustr* @kmalloc(i32 8, i32 %19)
  store %struct.ustr* %20, %struct.ustr** %11, align 8
  %21 = load %struct.ustr*, %struct.ustr** %11, align 8
  %22 = icmp ne %struct.ustr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %83

24:                                               ; preds = %18
  %25 = load %struct.ustr*, %struct.ustr** %11, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @udf_build_ustr_exact(%struct.ustr* %25, i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %80

31:                                               ; preds = %24
  %32 = load %struct.super_block*, %struct.super_block** %6, align 8
  %33 = load i32, i32* @UDF_FLAG_UTF8, align 4
  %34 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.ustr*, %struct.ustr** %10, align 8
  %38 = load %struct.ustr*, %struct.ustr** %11, align 8
  %39 = call i32 @udf_CS0toUTF8(%struct.ustr* %37, %struct.ustr* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @udf_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %42)
  br label %80

44:                                               ; preds = %36
  br label %65

45:                                               ; preds = %31
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = load i32, i32* @UDF_FLAG_NLS_MAP, align 4
  %48 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ustr*, %struct.ustr** %10, align 8
  %56 = load %struct.ustr*, %struct.ustr** %11, align 8
  %57 = call i32 @udf_CS0toNLS(i32 %54, %struct.ustr* %55, %struct.ustr* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @udf_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %60)
  br label %80

62:                                               ; preds = %50
  br label %64

63:                                               ; preds = %45
  br label %80

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.ustr*, %struct.ustr** %10, align 8
  %68 = getelementptr inbounds %struct.ustr, %struct.ustr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ustr*, %struct.ustr** %10, align 8
  %71 = getelementptr inbounds %struct.ustr, %struct.ustr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ustr*, %struct.ustr** %11, align 8
  %74 = getelementptr inbounds %struct.ustr, %struct.ustr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ustr*, %struct.ustr** %11, align 8
  %77 = getelementptr inbounds %struct.ustr, %struct.ustr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @udf_translate_to_linux(i32* %66, i32 %69, i32 %72, i32 %75, i32 %78)
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %65, %63, %59, %41, %30
  %81 = load %struct.ustr*, %struct.ustr** %11, align 8
  %82 = call i32 @kfree(%struct.ustr* %81)
  br label %83

83:                                               ; preds = %80, %23
  %84 = load %struct.ustr*, %struct.ustr** %10, align 8
  %85 = call i32 @kfree(%struct.ustr* %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %17
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.ustr* @kmalloc(i32, i32) #1

declare dso_local i64 @udf_build_ustr_exact(%struct.ustr*, i32*, i32) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @udf_CS0toUTF8(%struct.ustr*, %struct.ustr*) #1

declare dso_local i32 @udf_debug(i8*, i32*) #1

declare dso_local i32 @udf_CS0toNLS(i32, %struct.ustr*, %struct.ustr*) #1

declare dso_local %struct.TYPE_2__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_translate_to_linux(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ustr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_type_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_type_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@cxx_pp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"&*^\00", align 1
@pp_before = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"<typeprefixerror>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_type_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_type_prefix(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TYPE_PTRMEMFUNC_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_CODE(i32 %13)
  switch i32 %14, label %120 [
    i32 142, label %15
    i32 153, label %15
    i32 139, label %15
    i32 143, label %51
    i32 147, label %86
    i32 144, label %94
    i32 154, label %108
    i32 149, label %112
    i32 146, label %112
    i32 145, label %112
    i32 152, label %112
    i32 141, label %112
    i32 140, label %112
    i32 137, label %112
    i32 138, label %112
    i32 151, label %112
    i32 136, label %112
    i32 132, label %112
    i32 135, label %112
    i32 131, label %112
    i32 130, label %112
    i32 128, label %112
    i32 134, label %112
    i32 150, label %112
    i32 129, label %112
    i32 133, label %112
    i32 148, label %124
  ]

15:                                               ; preds = %12, %12, %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  call void @dump_type_prefix(i32 %18, i32 %19)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TREE_CODE(i32 %20)
  %22 = icmp eq i32 %21, 154
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i32, i32* @cxx_pp, align 4
  %25 = call i32 @pp_cxx_whitespace(i32 %24)
  %26 = load i32, i32* @cxx_pp, align 4
  %27 = call i32 @pp_cxx_left_paren(i32 %26)
  br label %28

28:                                               ; preds = %23, %15
  %29 = load i32, i32* @cxx_pp, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TREE_CODE(i32 %30)
  %32 = icmp eq i32 %31, 142
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TREE_CODE(i32 %34)
  %36 = icmp eq i32 %35, 153
  %37 = zext i1 %36 to i32
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %33, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* @.str, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @pp_character(i32 %29, i8 signext %42)
  %44 = load i8*, i8** @pp_before, align 8
  %45 = load i32, i32* @cxx_pp, align 4
  %46 = call %struct.TYPE_2__* @pp_base(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @cxx_pp, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @pp_cxx_cv_qualifier_seq(i32 %48, i32 %49)
  br label %127

51:                                               ; preds = %12
  br label %52

52:                                               ; preds = %51, %9
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = load i32, i32* %4, align 4
  call void @dump_type_prefix(i32 %54, i32 %55)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @TREE_CODE(i32 %56)
  %58 = icmp eq i32 %57, 143
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load i32, i32* @cxx_pp, align 4
  %61 = call i32 @pp_maybe_space(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @TREE_TYPE(i32 %62)
  %64 = call i32 @TREE_CODE(i32 %63)
  %65 = icmp eq i32 %64, 154
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @cxx_pp, align 4
  %68 = call i32 @pp_cxx_left_paren(i32 %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @TYPE_OFFSET_BASETYPE(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @dump_type(i32 %71, i32 %72)
  %74 = load i32, i32* @cxx_pp, align 4
  %75 = call i32 @pp_cxx_colon_colon(i32 %74)
  br label %76

76:                                               ; preds = %69, %52
  %77 = load i32, i32* @cxx_pp, align 4
  %78 = call i32 @pp_cxx_star(i32 %77)
  %79 = load i32, i32* @cxx_pp, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @pp_cxx_cv_qualifier_seq(i32 %79, i32 %80)
  %82 = load i8*, i8** @pp_before, align 8
  %83 = load i32, i32* @cxx_pp, align 4
  %84 = call %struct.TYPE_2__* @pp_base(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  br label %127

86:                                               ; preds = %12
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @TREE_TYPE(i32 %87)
  %89 = load i32, i32* %4, align 4
  call void @dump_type_prefix(i32 %88, i32 %89)
  %90 = load i32, i32* @cxx_pp, align 4
  %91 = call i32 @pp_maybe_space(i32 %90)
  %92 = load i32, i32* @cxx_pp, align 4
  %93 = call i32 @pp_cxx_left_paren(i32 %92)
  br label %127

94:                                               ; preds = %12
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @TREE_TYPE(i32 %95)
  %97 = load i32, i32* %4, align 4
  call void @dump_type_prefix(i32 %96, i32 %97)
  %98 = load i32, i32* @cxx_pp, align 4
  %99 = call i32 @pp_maybe_space(i32 %98)
  %100 = load i32, i32* @cxx_pp, align 4
  %101 = call i32 @pp_cxx_left_paren(i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @TYPE_METHOD_BASETYPE(i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @dump_aggr_type(i32 %103, i32 %104)
  %106 = load i32, i32* @cxx_pp, align 4
  %107 = call i32 @pp_cxx_colon_colon(i32 %106)
  br label %127

108:                                              ; preds = %12
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @TREE_TYPE(i32 %109)
  %111 = load i32, i32* %4, align 4
  call void @dump_type_prefix(i32 %110, i32 %111)
  br label %127

112:                                              ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @dump_type(i32 %113, i32 %114)
  %116 = load i8*, i8** @pp_before, align 8
  %117 = load i32, i32* @cxx_pp, align 4
  %118 = call %struct.TYPE_2__* @pp_base(i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  br label %127

120:                                              ; preds = %12
  %121 = load i32, i32* @cxx_pp, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @pp_unsupported_tree(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %12, %120
  %125 = load i32, i32* @cxx_pp, align 4
  %126 = call i32 @pp_identifier(i32 %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %112, %108, %94, %86, %76, %28
  ret void
}

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_cxx_whitespace(i32) #1

declare dso_local i32 @pp_cxx_left_paren(i32) #1

declare dso_local i32 @pp_character(i32, i8 signext) #1

declare dso_local %struct.TYPE_2__* @pp_base(i32) #1

declare dso_local i32 @pp_cxx_cv_qualifier_seq(i32, i32) #1

declare dso_local i32 @pp_maybe_space(i32) #1

declare dso_local i32 @dump_type(i32, i32) #1

declare dso_local i32 @TYPE_OFFSET_BASETYPE(i32) #1

declare dso_local i32 @pp_cxx_colon_colon(i32) #1

declare dso_local i32 @pp_cxx_star(i32) #1

declare dso_local i32 @dump_aggr_type(i32, i32) #1

declare dso_local i32 @TYPE_METHOD_BASETYPE(i32) #1

declare dso_local i32 @pp_unsupported_tree(i32, i32) #1

declare dso_local i32 @pp_identifier(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

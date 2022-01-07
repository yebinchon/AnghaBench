; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_set_prop_unmerged_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_set_prop_unmerged_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_ref_s = type { i32, i8* }
%struct.see_register_properties = type { i64, i32, i32, i32 }

@df = common dso_local global i32 0, align 4
@see_bb_hash_ar = common dso_local global i64* null, align 8
@hash_descriptor_properties = common dso_local global i32 0, align 4
@eq_descriptor_properties = common dso_local global i32 0, align 4
@hash_del_properties = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@USE_EXTENSION = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Locally redundant extension:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @see_set_prop_unmerged_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_set_prop_unmerged_use(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.see_ref_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.see_register_properties*, align 8
  %11 = alloca %struct.see_register_properties**, align 8
  %12 = alloca %struct.see_register_properties, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.see_ref_s*
  store %struct.see_ref_s* %18, %struct.see_ref_s** %6, align 8
  %19 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %20 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @see_get_extension_reg(i8* %22, i32 1)
  store i8* %23, i8** %8, align 8
  store %struct.see_register_properties* null, %struct.see_register_properties** %10, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @df, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @DF_INSN_LUID(i32 %24, i8* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i64*, i64** @see_bb_hash_ar, align 8
  %28 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %29 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @BLOCK_NUM(i8* %30)
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @hash_descriptor_properties, align 4
  %38 = load i32, i32* @eq_descriptor_properties, align 4
  %39 = load i32, i32* @hash_del_properties, align 4
  %40 = call i64 @htab_create(i32 10, i32 %37, i32 %38, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** @see_bb_hash_ar, align 8
  %43 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %44 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @BLOCK_NUM(i8* %45)
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  store i64 %41, i64* %47, align 8
  br label %48

48:                                               ; preds = %36, %2
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @REGNO(i8* %49)
  %51 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %12, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* @INSERT, align 4
  %54 = call i64 @htab_find_slot(i64 %52, %struct.see_register_properties* %12, i32 %53)
  %55 = inttoptr i64 %54 to %struct.see_register_properties**
  store %struct.see_register_properties** %55, %struct.see_register_properties*** %11, align 8
  %56 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  %57 = icmp ne %struct.see_register_properties** %56, null
  br i1 %57, label %58, label %140

58:                                               ; preds = %48
  %59 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  %60 = load %struct.see_register_properties*, %struct.see_register_properties** %59, align 8
  %61 = icmp ne %struct.see_register_properties* %60, null
  br i1 %61, label %62, label %140

62:                                               ; preds = %58
  %63 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  %64 = load %struct.see_register_properties*, %struct.see_register_properties** %63, align 8
  store %struct.see_register_properties* %64, %struct.see_register_properties** %10, align 8
  %65 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %66 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @REGNO(i8* %68)
  %70 = icmp eq i64 %67, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @gcc_assert(i32 %71)
  %73 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %74 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %62
  %78 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %79 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %85 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %139

86:                                               ; preds = %77, %62
  %87 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %88 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %93 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %98 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i8**, i8*** %3, align 8
  %101 = bitcast i8** %100 to i32*
  %102 = call i32 @htab_clear_slot(i32 %99, i32* %101)
  store i32 1, i32* %13, align 4
  br label %138

103:                                              ; preds = %91, %86
  %104 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %105 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %110 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %116 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  br label %137

117:                                              ; preds = %108, %103
  %118 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %119 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %124 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %129 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i8**, i8*** %3, align 8
  %132 = bitcast i8** %131 to i32*
  %133 = call i32 @htab_clear_slot(i32 %130, i32* %132)
  store i32 1, i32* %13, align 4
  br label %136

134:                                              ; preds = %122, %117
  %135 = call i32 (...) @gcc_unreachable()
  br label %136

136:                                              ; preds = %134, %127
  br label %137

137:                                              ; preds = %136, %113
  br label %138

138:                                              ; preds = %137, %96
  br label %139

139:                                              ; preds = %138, %82
  br label %155

140:                                              ; preds = %58, %48
  %141 = call %struct.see_register_properties* @xmalloc(i32 24)
  store %struct.see_register_properties* %141, %struct.see_register_properties** %10, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = call i64 @REGNO(i8* %142)
  %144 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %145 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %147 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %146, i32 0, i32 1
  store i32 -1, i32* %147, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %150 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %152 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %151, i32 0, i32 3
  store i32 -1, i32* %152, align 8
  %153 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %154 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  store %struct.see_register_properties* %153, %struct.see_register_properties** %154, align 8
  br label %155

155:                                              ; preds = %140, %139
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = load i8*, i8** %5, align 8
  %160 = load i32, i32* @USE_EXTENSION, align 4
  %161 = call i32 @see_seek_pre_extension_expr(i8* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i64, i64* @dump_file, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i64, i64* @dump_file, align 8
  %170 = call i32 @fprintf(i64 %169, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %171 = load i64, i64* @dump_file, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = call i32 @print_rtl_single(i64 %171, i8* %172)
  br label %174

174:                                              ; preds = %168, %165, %162
  ret i32 1
}

declare dso_local i8* @see_get_extension_reg(i8*, i32) #1

declare dso_local i32 @DF_INSN_LUID(i32, i8*) #1

declare dso_local i64 @BLOCK_NUM(i8*) #1

declare dso_local i64 @htab_create(i32, i32, i32, i32) #1

declare dso_local i64 @REGNO(i8*) #1

declare dso_local i64 @htab_find_slot(i64, %struct.see_register_properties*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @htab_clear_slot(i32, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local %struct.see_register_properties* @xmalloc(i32) #1

declare dso_local i32 @see_seek_pre_extension_expr(i8*, i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_rtl_single(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

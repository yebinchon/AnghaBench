; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_set_prop_merged_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_set_prop_merged_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_ref_s = type { i8* }
%struct.see_register_properties = type { i64, i32, i32, i32 }

@df = common dso_local global i32 0, align 4
@see_bb_hash_ar = common dso_local global i64* null, align 8
@hash_descriptor_properties = common dso_local global i32 0, align 4
@eq_descriptor_properties = common dso_local global i32 0, align 4
@hash_del_properties = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@DEF_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @see_set_prop_merged_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_set_prop_merged_def(i8** %0, i8* %1) #0 {
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
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.see_ref_s*
  store %struct.see_ref_s* %17, %struct.see_ref_s** %6, align 8
  %18 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %19 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @see_get_extension_reg(i8* %21, i32 1)
  store i8* %22, i8** %8, align 8
  store %struct.see_register_properties* null, %struct.see_register_properties** %10, align 8
  %23 = load i32, i32* @df, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @DF_INSN_LUID(i32 %23, i8* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i64*, i64** @see_bb_hash_ar, align 8
  %27 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %28 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @BLOCK_NUM(i8* %29)
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @hash_descriptor_properties, align 4
  %37 = load i32, i32* @eq_descriptor_properties, align 4
  %38 = load i32, i32* @hash_del_properties, align 4
  %39 = call i64 @htab_create(i32 10, i32 %36, i32 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64*, i64** @see_bb_hash_ar, align 8
  %42 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %43 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @BLOCK_NUM(i8* %44)
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  store i64 %40, i64* %46, align 8
  br label %47

47:                                               ; preds = %35, %2
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @REGNO(i8* %48)
  %50 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %12, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @INSERT, align 4
  %53 = call i64 @htab_find_slot(i64 %51, %struct.see_register_properties* %12, i32 %52)
  %54 = inttoptr i64 %53 to %struct.see_register_properties**
  store %struct.see_register_properties** %54, %struct.see_register_properties*** %11, align 8
  %55 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  %56 = icmp ne %struct.see_register_properties** %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %47
  %58 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  %59 = load %struct.see_register_properties*, %struct.see_register_properties** %58, align 8
  %60 = icmp ne %struct.see_register_properties* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  %63 = load %struct.see_register_properties*, %struct.see_register_properties** %62, align 8
  store %struct.see_register_properties* %63, %struct.see_register_properties** %10, align 8
  %64 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %65 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @REGNO(i8* %67)
  %69 = icmp eq i64 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @gcc_assert(i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %74 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %77 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %94

78:                                               ; preds = %57, %47
  %79 = call %struct.see_register_properties* @xmalloc(i32 24)
  store %struct.see_register_properties* %79, %struct.see_register_properties** %10, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @REGNO(i8* %80)
  %82 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %83 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %86 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %88 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %87, i32 0, i32 3
  store i32 -1, i32* %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %91 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %93 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  store %struct.see_register_properties* %92, %struct.see_register_properties** %93, align 8
  br label %94

94:                                               ; preds = %78, %61
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* @DEF_EXTENSION, align 4
  %97 = call i32 @see_seek_pre_extension_expr(i8* %95, i32 %96)
  ret i32 1
}

declare dso_local i8* @see_get_extension_reg(i8*, i32) #1

declare dso_local i32 @DF_INSN_LUID(i32, i8*) #1

declare dso_local i64 @BLOCK_NUM(i8*) #1

declare dso_local i64 @htab_create(i32, i32, i32, i32) #1

declare dso_local i64 @REGNO(i8*) #1

declare dso_local i64 @htab_find_slot(i64, %struct.see_register_properties*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.see_register_properties* @xmalloc(i32) #1

declare dso_local i32 @see_seek_pre_extension_expr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

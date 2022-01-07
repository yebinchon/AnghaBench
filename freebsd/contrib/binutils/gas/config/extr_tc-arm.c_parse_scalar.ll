; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_type_el = type { i32 }
%struct.neon_typed_alias = type { i32, i32, %struct.neon_type_el }

@REG_TYPE_VFD = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@NTA_HASINDEX = common dso_local global i32 0, align 4
@NEON_ALL_LANES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"scalar must have an index\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"scalar index out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, %struct.neon_type_el*)* @parse_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_scalar(i8** %0, i32 %1, %struct.neon_type_el* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.neon_type_el*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.neon_typed_alias, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.neon_type_el* %2, %struct.neon_type_el** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i32, i32* @REG_TYPE_VFD, align 4
  %14 = call i32 @parse_typed_reg_or_scalar(i8** %9, i32 %13, i32* null, %struct.neon_typed_alias* %10)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @FAIL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NTA_HASINDEX, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @FAIL, align 4
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NEON_ALL_LANES, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @first_error(i32 %32)
  %34 = load i32, i32* @FAIL, align 4
  store i32 %34, i32* %4, align 4
  br label %62

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 64, %38
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @first_error(i32 %42)
  %44 = load i32, i32* @FAIL, align 4
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.neon_type_el*, %struct.neon_type_el** %7, align 8
  %48 = icmp ne %struct.neon_type_el* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.neon_type_el*, %struct.neon_type_el** %7, align 8
  %51 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 2
  %52 = bitcast %struct.neon_type_el* %50 to i8*
  %53 = bitcast %struct.neon_type_el* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i8*, i8** %9, align 8
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %57, 16
  %59 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %58, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %41, %31, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @parse_typed_reg_or_scalar(i8**, i32, i32*, %struct.neon_typed_alias*) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

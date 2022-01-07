; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_typed_reg_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_typed_reg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_type_el = type { i32 }
%struct.neon_typed_alias = type { i32, %struct.neon_type_el }

@FAIL = common dso_local global i32 0, align 4
@NTA_HASINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"register operand expected, but got scalar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32*, %struct.neon_type_el*)* @arm_typed_reg_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_typed_reg_parse(i8** %0, i32 %1, i32* %2, %struct.neon_type_el* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.neon_type_el*, align 8
  %10 = alloca %struct.neon_typed_alias, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.neon_type_el* %3, %struct.neon_type_el** %9, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @parse_typed_reg_or_scalar(i8** %11, i32 %15, i32* %16, %struct.neon_typed_alias* %10)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @FAIL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @FAIL, align 4
  store i32 %22, i32* %5, align 4
  br label %45

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NTA_HASINDEX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @first_error(i32 %30)
  %32 = load i32, i32* @FAIL, align 4
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %23
  %34 = load %struct.neon_type_el*, %struct.neon_type_el** %9, align 8
  %35 = icmp ne %struct.neon_type_el* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.neon_type_el*, %struct.neon_type_el** %9, align 8
  %38 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 1
  %39 = bitcast %struct.neon_type_el* %37 to i8*
  %40 = bitcast %struct.neon_type_el* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i8*, i8** %11, align 8
  %43 = load i8**, i8*** %6, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %29, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
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

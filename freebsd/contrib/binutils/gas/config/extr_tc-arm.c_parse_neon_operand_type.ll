; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_neon_operand_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_neon_operand_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_type_el = type { i32 }
%struct.neon_type = type { i32, %struct.neon_type_el* }

@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"only one type should be specified for operand\00", align 1
@FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"vector type expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neon_type_el*, i8**)* @parse_neon_operand_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_neon_operand_type(%struct.neon_type_el* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.neon_type_el*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.neon_type, align 8
  store %struct.neon_type_el* %0, %struct.neon_type_el** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 46
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = call i64 @parse_neon_type(%struct.neon_type* %7, i8** %6)
  %16 = load i64, i64* @SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.neon_type_el*, %struct.neon_type_el** %4, align 8
  %24 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %7, i32 0, i32 1
  %25 = load %struct.neon_type_el*, %struct.neon_type_el** %24, align 8
  %26 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %25, i64 0
  %27 = bitcast %struct.neon_type_el* %23 to i8*
  %28 = bitcast %struct.neon_type_el* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %33

29:                                               ; preds = %18
  %30 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @first_error(i32 %30)
  %32 = load i32, i32* @FAIL, align 4
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %14
  %35 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @first_error(i32 %35)
  %37 = load i32, i32* @FAIL, align 4
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %33
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @FAIL, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i64, i64* @SUCCESS, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %39, %34, %29
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @parse_neon_type(%struct.neon_type*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

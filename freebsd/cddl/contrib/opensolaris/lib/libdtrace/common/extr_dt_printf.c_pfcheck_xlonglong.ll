; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfcheck_xlonglong.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfcheck_xlonglong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"signed long long\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@CTF_K_TYPEDEF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"int64_t\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*)* @pfcheck_xlonglong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfcheck_xlonglong(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ctf_type_resolve(i32* %24, i32 %25)
  %27 = trunc i64 %20 to i32
  %28 = call i32* @ctf_type_name(i32* %23, i32 %26, i8* %22, i32 %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %65

40:                                               ; preds = %36, %3
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ctf_type_kind(i32* %42, i32 %43)
  %45 = load i64, i64* @CTF_K_TYPEDEF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = trunc i64 %20 to i32
  %51 = call i32* @ctf_type_name(i32* %48, i32 %49, i8* %22, i32 %50)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %65

60:                                               ; preds = %56, %47
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ctf_type_reference(i32* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  br label %41

64:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %59, %39
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ctf_type_name(i32*, i32, i8*, i32) #2

declare dso_local i32 @ctf_type_resolve(i32*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @ctf_type_kind(i32*, i32) #2

declare dso_local i32 @ctf_type_reference(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

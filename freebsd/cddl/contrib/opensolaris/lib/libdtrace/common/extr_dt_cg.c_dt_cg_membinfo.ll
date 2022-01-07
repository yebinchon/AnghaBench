; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_membinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_membinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@CTF_K_FORWARD = common dso_local global i64 0, align 8
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i8*, i32*)* @dt_cg_membinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dt_cg_membinfo(i32* %0, i64 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  br label %14

14:                                               ; preds = %54, %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @ctf_type_kind(i32* %15, i64 %16)
  %18 = load i64, i64* @CTF_K_FORWARD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %22 to i32
  %28 = call i32* @ctf_type_name(i32* %25, i64 %26, i8* %24, i32 %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %20
  %31 = call i32 @dt_type_lookup(i8* %24, %struct.TYPE_3__* %12)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %30, %20
  store i32 3, i32* %13, align 4
  br label %51

44:                                               ; preds = %38, %33
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @ctf_type_resolve(i32* %47, i64 %49)
  store i64 %50, i64* %7, align 8
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %44, %43
  %52 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %13, align 4
  switch i32 %53, label %68 [
    i32 0, label %54
    i32 3, label %55
  ]

54:                                               ; preds = %51
  br label %14

55:                                               ; preds = %51, %14
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @ctf_member_info(i32* %56, i64 %57, i8* %58, i32* %59)
  %61 = load i64, i64* @CTF_ERR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32* null, i32** %5, align 8
  br label %66

64:                                               ; preds = %55
  %65 = load i32*, i32** %6, align 8
  store i32* %65, i32** %5, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i32*, i32** %5, align 8
  ret i32* %67

68:                                               ; preds = %51
  unreachable
}

declare dso_local i64 @ctf_type_kind(i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @ctf_type_name(i32*, i64, i8*, i32) #1

declare dso_local i32 @dt_type_lookup(i8*, %struct.TYPE_3__*) #1

declare dso_local i64 @ctf_type_resolve(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @ctf_member_info(i32*, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

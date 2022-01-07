; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_util.c_gfs2_icbit_munge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_util.c_gfs2_icbit_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_icbit_munge(%struct.gfs2_sbd* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 8, %15
  %17 = udiv i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = mul nsw i32 8, %18
  %20 = load i32, i32* %11, align 4
  %21 = urem i32 %20, %19
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = udiv i32 %22, 8
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = urem i32 %24, 8
  store i32 %25, i32* %11, align 4
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %11, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = icmp ne i32 %43, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @gfs2_assert_withdraw(%struct.gfs2_sbd* %39, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %4
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 1, %54
  %56 = load i8**, i8*** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %55
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  br label %84

68:                                               ; preds = %4
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 1, %69
  %71 = xor i32 %70, -1
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, %71
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  br label %84

84:                                               ; preds = %68, %53
  ret void
}

declare dso_local i32 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

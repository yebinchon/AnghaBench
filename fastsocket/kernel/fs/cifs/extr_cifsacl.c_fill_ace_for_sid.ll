; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_fill_ace_for_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_fill_ace_for_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ace = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32 }
%struct.cifs_sid = type { i32, i32*, i32*, i32 }

@ACCESS_ALLOWED = common dso_local global i32 0, align 4
@SET_MINIMUM_RIGHTS = common dso_local global i64 0, align 8
@NUM_AUTHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ace*, %struct.cifs_sid*, i32, i32)* @fill_ace_for_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_ace_for_sid(%struct.cifs_ace* %0, %struct.cifs_sid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cifs_ace*, align 8
  %6 = alloca %struct.cifs_sid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.cifs_ace* %0, %struct.cifs_ace** %5, align 8
  store %struct.cifs_sid* %1, %struct.cifs_sid** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @ACCESS_ALLOWED, align 4
  %13 = load %struct.cifs_ace*, %struct.cifs_ace** %5, align 8
  %14 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cifs_ace*, %struct.cifs_ace** %5, align 8
  %16 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @mode_to_access_flags(i32 %17, i32 %18, i64* %11)
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* @SET_MINIMUM_RIGHTS, align 8
  store i64 %23, i64* %11, align 8
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @cpu_to_le32(i64 %25)
  %27 = load %struct.cifs_ace*, %struct.cifs_ace** %5, align 8
  %28 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cifs_sid*, %struct.cifs_sid** %6, align 8
  %30 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cifs_ace*, %struct.cifs_ace** %5, align 8
  %33 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load %struct.cifs_sid*, %struct.cifs_sid** %6, align 8
  %36 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cifs_ace*, %struct.cifs_ace** %5, align 8
  %39 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %60, %24
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @NUM_AUTHS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load %struct.cifs_sid*, %struct.cifs_sid** %6, align 8
  %47 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cifs_ace*, %struct.cifs_ace** %5, align 8
  %54 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %41

63:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %85, %63
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.cifs_sid*, %struct.cifs_sid** %6, align 8
  %67 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = load %struct.cifs_sid*, %struct.cifs_sid** %6, align 8
  %72 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cifs_ace*, %struct.cifs_ace** %5, align 8
  %79 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %77, i32* %84, align 4
  br label %85

85:                                               ; preds = %70
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %64

88:                                               ; preds = %64
  %89 = load %struct.cifs_sid*, %struct.cifs_sid** %6, align 8
  %90 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 4
  %93 = add nsw i32 16, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @cpu_to_le16(i32 %94)
  %96 = load %struct.cifs_ace*, %struct.cifs_ace** %5, align 8
  %97 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @mode_to_access_flags(i32, i32, i64*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

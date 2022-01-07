; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_cifs_copy_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_cifs_copy_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i32, i32*, i32*, i32 }

@u8 = common dso_local global i32 0, align 4
@SID_MAX_SUB_AUTHORITIES = common dso_local global i32 0, align 4
@NUM_AUTHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_sid*, %struct.cifs_sid*)* @cifs_copy_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_copy_sid(%struct.cifs_sid* %0, %struct.cifs_sid* %1) #0 {
  %3 = alloca %struct.cifs_sid*, align 8
  %4 = alloca %struct.cifs_sid*, align 8
  %5 = alloca i32, align 4
  store %struct.cifs_sid* %0, %struct.cifs_sid** %3, align 8
  store %struct.cifs_sid* %1, %struct.cifs_sid** %4, align 8
  %6 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %7 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.cifs_sid*, %struct.cifs_sid** %3, align 8
  %10 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @u8, align 4
  %12 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %13 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SID_MAX_SUB_AUTHORITIES, align 4
  %16 = call i32 @min_t(i32 %11, i32 %14, i32 %15)
  %17 = load %struct.cifs_sid*, %struct.cifs_sid** %3, align 8
  %18 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %37, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NUM_AUTHS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %25 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cifs_sid*, %struct.cifs_sid** %3, align 8
  %32 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %19

40:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.cifs_sid*, %struct.cifs_sid** %3, align 8
  %44 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %49 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cifs_sid*, %struct.cifs_sid** %3, align 8
  %56 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %41

64:                                               ; preds = %41
  ret void
}

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

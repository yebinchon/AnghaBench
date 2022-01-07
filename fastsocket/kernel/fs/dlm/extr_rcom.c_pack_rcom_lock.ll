; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_pack_rcom_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_pack_rcom_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_lkb = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rcom_lock = type { i32, i32, i8*, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@DLM_CB_BAST = common dso_local global i32 0, align 4
@DLM_CB_CAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.rcom_lock*)* @pack_rcom_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_rcom_lock(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, %struct.rcom_lock* %2) #0 {
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.rcom_lock*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.rcom_lock* %2, %struct.rcom_lock** %6, align 8
  %7 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %8 = call i32 @memset(%struct.rcom_lock* %7, i32 0, i32 88)
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @cpu_to_le32(i32 %11)
  %13 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %14 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %13, i32 0, i32 12
  store i8* %12, i8** %14, align 8
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %20 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %19, i32 0, i32 11
  store i8* %18, i8** %20, align 8
  %21 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %22 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %26 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %28 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %32 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %38 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %40 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %43 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %45 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %48 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %50 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %53 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %59 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %61 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %3
  %65 = load i32, i32* @DLM_CB_BAST, align 4
  %66 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %67 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %3
  %71 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %72 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @DLM_CB_CAST, align 4
  %77 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %78 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %83 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %87 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %89 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %92 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %95 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcpy(i32 %90, i64 %93, i32 %96)
  %98 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %99 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %81
  %103 = load %struct.rcom_lock*, %struct.rcom_lock** %6, align 8
  %104 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %107 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %110 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(i32 %105, i64 %108, i32 %113)
  br label %115

115:                                              ; preds = %102, %81
  ret void
}

declare dso_local i32 @memset(%struct.rcom_lock*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

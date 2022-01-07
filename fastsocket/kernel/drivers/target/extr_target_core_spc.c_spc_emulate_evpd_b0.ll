; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_b0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_b0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i8 (%struct.se_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i8*)* @spc_emulate_evpd_b0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_evpd_b0(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 0
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.se_device*, %struct.se_device** %5, align 8
  %12 = getelementptr inbounds %struct.se_device, %struct.se_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.se_device*, %struct.se_device** %5, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load %struct.se_device*, %struct.se_device** %5, align 8
  %25 = getelementptr inbounds %struct.se_device, %struct.se_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8 (%struct.se_device*)*, i8 (%struct.se_device*)** %27, align 8
  %29 = load %struct.se_device*, %struct.se_device** %5, align 8
  %30 = call zeroext i8 %28(%struct.se_device* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %30, i8* %32, align 1
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 60, i32 16
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8 1, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 6
  %44 = call i32 @put_unaligned_be16(i32 1, i8* %43)
  %45 = load %struct.se_device*, %struct.se_device** %5, align 8
  %46 = getelementptr inbounds %struct.se_device, %struct.se_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.se_device*, %struct.se_device** %5, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @min(i32 %48, i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = call i32 @put_unaligned_be32(i64 %54, i8* %56)
  %58 = load %struct.se_device*, %struct.se_device** %5, align 8
  %59 = getelementptr inbounds %struct.se_device, %struct.se_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 12
  %64 = call i32 @put_unaligned_be32(i64 %61, i8* %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %23
  br label %110

68:                                               ; preds = %23
  %69 = load %struct.se_device*, %struct.se_device** %5, align 8
  %70 = getelementptr inbounds %struct.se_device, %struct.se_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 20
  %75 = call i32 @put_unaligned_be32(i64 %72, i8* %74)
  %76 = load %struct.se_device*, %struct.se_device** %5, align 8
  %77 = getelementptr inbounds %struct.se_device, %struct.se_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 24
  %82 = call i32 @put_unaligned_be32(i64 %79, i8* %81)
  %83 = load %struct.se_device*, %struct.se_device** %5, align 8
  %84 = getelementptr inbounds %struct.se_device, %struct.se_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 28
  %89 = call i32 @put_unaligned_be32(i64 %86, i8* %88)
  %90 = load %struct.se_device*, %struct.se_device** %5, align 8
  %91 = getelementptr inbounds %struct.se_device, %struct.se_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 32
  %96 = call i32 @put_unaligned_be32(i64 %93, i8* %95)
  %97 = load %struct.se_device*, %struct.se_device** %5, align 8
  %98 = getelementptr inbounds %struct.se_device, %struct.se_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %68
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 32
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, 128
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %104, align 1
  br label %109

109:                                              ; preds = %102, %68
  br label %110

110:                                              ; preds = %109, %67
  %111 = load %struct.se_device*, %struct.se_device** %5, align 8
  %112 = getelementptr inbounds %struct.se_device, %struct.se_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 36
  %117 = call i32 @put_unaligned_be64(i32 %114, i8* %116)
  ret i32 0
}

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @put_unaligned_be32(i64, i8*) #1

declare dso_local i32 @put_unaligned_be64(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

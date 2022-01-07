; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_set_upsampling_coef_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_set_upsampling_coef_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@__const.set_upsampling_coef_table.coef = private unnamed_addr constant [8 x [2 x %struct.TYPE_4__]] [[2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 8388608, i32 8388608 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 226293760, i32 58393343 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 510719487, i32 208602622 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 861926910, i32 542705659 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 -146191881, i32 4210688 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 -178310149, i32 123281662 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 -177201410, i32 91163903 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 -126087681, i32 41616128 }, %struct.TYPE_4__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_upsampling_coef_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_upsampling_coef_table(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x [2 x %struct.TYPE_4__]], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = bitcast [8 x [2 x %struct.TYPE_4__]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x [2 x %struct.TYPE_4__]]* @__const.set_upsampling_coef_table.coef to i8*), i64 128, i1 false)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x [2 x %struct.TYPE_4__]], [8 x [2 x %struct.TYPE_4__]]* %3, i64 0, i64 %13
  %15 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %14, i64 0, i64 0
  %16 = bitcast %struct.TYPE_4__* %15 to i64*
  %17 = load i64, i64* %16, align 16
  %18 = call i32 @write_firh_reg(i32 %10, i32 %11, i64 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x [2 x %struct.TYPE_4__]], [8 x [2 x %struct.TYPE_4__]]* %3, i64 0, i64 %22
  %24 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %23, i64 0, i64 1
  %25 = bitcast %struct.TYPE_4__* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @write_firhv_reg(i32 %19, i32 %20, i64 %26)
  br label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %6

31:                                               ; preds = %6
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @write_firh_reg(i32, i32, i64) #2

declare dso_local i32 @write_firhv_reg(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

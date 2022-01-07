; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_greet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_greet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grtpkt = type { i32, i32, [8 x i8] }
%struct.mimio = type opaque

@__const.mimio_greet.grtpkts = private unnamed_addr constant [12 x %struct.grtpkt] [%struct.grtpkt { i32 3, i32 0, [8 x i8] c"\11UD\00\00\00\00\00" }, %struct.grtpkt { i32 5, i32 0, [8 x i8] c"SU\00\00\06\00\00\00" }, %struct.grtpkt { i32 5, i32 0, [8 x i8] c"CU\00\00\16\00\00\00" }, %struct.grtpkt { i32 5, i32 0, [8 x i8] c"3U\00\00f\00\00\00" }, %struct.grtpkt { i32 5, i32 0, [8 x i8] c"\13\00^\02O\00\00\00" }, %struct.grtpkt { i32 5, i32 0, [8 x i8] c"\13\00\04\03\14\00\00\00" }, %struct.grtpkt { i32 5, i32 2, [8 x i8] c"\13\00\00\04\17\00\00\00" }, %struct.grtpkt { i32 5, i32 0, [8 x i8] c"\13\00\0D\08\16\00\00\00" }, %struct.grtpkt { i32 5, i32 0, [8 x i8] c"\13\00M\01_\00\00\00" }, %struct.grtpkt { i32 3, i32 0, [8 x i8] c"\F1U\A4\00\00\00\00\00" }, %struct.grtpkt { i32 7, i32 2, [8 x i8] c"RU\00\071Ud\00" }, %struct.grtpkt zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mimio*)* @mimio_greet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mimio_greet(%struct.mimio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mimio*, align 8
  %4 = alloca [12 x %struct.grtpkt], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.grtpkt*, align 8
  store %struct.mimio* %0, %struct.mimio** %3, align 8
  %7 = bitcast [12 x %struct.grtpkt]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([12 x %struct.grtpkt]* @__const.mimio_greet.grtpkts to i8*), i64 192, i1 false)
  %8 = getelementptr inbounds [12 x %struct.grtpkt], [12 x %struct.grtpkt]* %4, i64 0, i64 0
  store %struct.grtpkt* %8, %struct.grtpkt** %6, align 8
  br label %9

9:                                                ; preds = %38, %1
  %10 = load %struct.grtpkt*, %struct.grtpkt** %6, align 8
  %11 = getelementptr inbounds %struct.grtpkt, %struct.grtpkt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = load %struct.mimio*, %struct.mimio** %3, align 8
  %16 = load %struct.grtpkt*, %struct.grtpkt** %6, align 8
  %17 = getelementptr inbounds %struct.grtpkt, %struct.grtpkt* %16, i32 0, i32 2
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %19 = load %struct.grtpkt*, %struct.grtpkt** %6, align 8
  %20 = getelementptr inbounds %struct.grtpkt, %struct.grtpkt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.mimio*, i8*, i32, ...) bitcast (i32 (...)* @mimio_tx to i32 (%struct.mimio*, i8*, i32, ...)*)(%struct.mimio* %15, i8* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %14
  %28 = load %struct.grtpkt*, %struct.grtpkt** %6, align 8
  %29 = getelementptr inbounds %struct.grtpkt, %struct.grtpkt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.grtpkt*, %struct.grtpkt** %6, align 8
  %34 = getelementptr inbounds %struct.grtpkt, %struct.grtpkt* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @msleep to i32 (i32, ...)*)(i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.grtpkt*, %struct.grtpkt** %6, align 8
  %40 = getelementptr inbounds %struct.grtpkt, %struct.grtpkt* %39, i32 1
  store %struct.grtpkt* %40, %struct.grtpkt** %6, align 8
  br label %9

41:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mimio_tx(...) #2

declare dso_local i32 @msleep(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

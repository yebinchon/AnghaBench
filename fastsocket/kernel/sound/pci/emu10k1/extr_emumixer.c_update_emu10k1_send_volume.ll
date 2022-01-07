; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_update_emu10k1_send_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_update_emu10k1_send_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64 }

@PTRX_FXSENDAMOUNT_A = common dso_local global i32 0, align 4
@PTRX_FXSENDAMOUNT_B = common dso_local global i32 0, align 4
@PSST_FXSENDAMOUNT_C = common dso_local global i32 0, align 4
@DSL_FXSENDAMOUNT_D = common dso_local global i32 0, align 4
@A_SENDAMOUNTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32, i8*)* @update_emu10k1_send_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_emu10k1_send_volume(%struct.snd_emu10k1* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %9 = load i32, i32* @PTRX_FXSENDAMOUNT_A, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %8, i32 %9, i32 %10, i32 %14)
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %17 = load i32, i32* @PTRX_FXSENDAMOUNT_B, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %16, i32 %17, i32 %18, i32 %22)
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %25 = load i32, i32* @PSST_FXSENDAMOUNT_C, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %24, i32 %25, i32 %26, i32 %30)
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %33 = load i32, i32* @DSL_FXSENDAMOUNT_D, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %32, i32 %33, i32 %34, i32 %38)
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %41 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %3
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 24
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 5
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 16
  %55 = or i32 %49, %54
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 6
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 8
  %61 = or i32 %55, %60
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 7
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %61, %65
  store i32 %66, i32* %7, align 4
  %67 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %68 = load i32, i32* @A_SENDAMOUNTS, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %44, %3
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

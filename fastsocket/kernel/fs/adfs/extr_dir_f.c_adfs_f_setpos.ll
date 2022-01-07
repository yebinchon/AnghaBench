; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir_f.c_adfs_f_setpos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir_f.c_adfs_f_setpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { i32 }

@ADFS_NUM_DIR_ENTRIES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adfs_dir*, i32)* @adfs_f_setpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_f_setpos(%struct.adfs_dir* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adfs_dir*, align 8
  %5 = alloca i32, align 4
  store %struct.adfs_dir* %0, %struct.adfs_dir** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ADFS_NUM_DIR_ENTRIES, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = mul i32 %13, 26
  %15 = add i32 5, %14
  %16 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %17 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

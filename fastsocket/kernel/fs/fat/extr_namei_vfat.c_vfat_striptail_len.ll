; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_striptail_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_striptail_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qstr*)* @vfat_striptail_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_striptail_len(%struct.qstr* %0) #0 {
  %2 = alloca %struct.qstr*, align 8
  %3 = alloca i32, align 4
  store %struct.qstr* %0, %struct.qstr** %2, align 8
  %4 = load %struct.qstr*, %struct.qstr** %2, align 8
  %5 = getelementptr inbounds %struct.qstr, %struct.qstr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load %struct.qstr*, %struct.qstr** %2, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br label %21

21:                                               ; preds = %10, %7
  %22 = phi i1 [ false, %7 ], [ %20, %10 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

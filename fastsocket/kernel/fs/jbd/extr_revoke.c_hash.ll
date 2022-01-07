; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_revoke.c_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_revoke.c_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.jbd_revoke_table_s* }
%struct.jbd_revoke_table_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jbd_revoke_table_s*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.jbd_revoke_table_s*, %struct.jbd_revoke_table_s** %8, align 8
  store %struct.jbd_revoke_table_s* %9, %struct.jbd_revoke_table_s** %5, align 8
  %10 = load %struct.jbd_revoke_table_s*, %struct.jbd_revoke_table_s** %5, align 8
  %11 = getelementptr inbounds %struct.jbd_revoke_table_s, %struct.jbd_revoke_table_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 6
  %16 = shl i32 %13, %15
  %17 = load i32, i32* %4, align 4
  %18 = lshr i32 %17, 13
  %19 = xor i32 %16, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 12
  %23 = shl i32 %20, %22
  %24 = xor i32 %19, %23
  %25 = load %struct.jbd_revoke_table_s*, %struct.jbd_revoke_table_s** %5, align 8
  %26 = getelementptr inbounds %struct.jbd_revoke_table_s, %struct.jbd_revoke_table_s* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %24, %28
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

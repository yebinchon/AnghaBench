; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_link_vcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_link_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clip_vcc = type { %struct.clip_vcc*, i64, %struct.atmarp_entry* }
%struct.atmarp_entry = type { %struct.TYPE_2__*, %struct.clip_vcc* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"link_vcc %p to entry %p (neigh %p)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clip_vcc*, %struct.atmarp_entry*)* @link_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_vcc(%struct.clip_vcc* %0, %struct.atmarp_entry* %1) #0 {
  %3 = alloca %struct.clip_vcc*, align 8
  %4 = alloca %struct.atmarp_entry*, align 8
  store %struct.clip_vcc* %0, %struct.clip_vcc** %3, align 8
  store %struct.atmarp_entry* %1, %struct.atmarp_entry** %4, align 8
  %5 = load %struct.clip_vcc*, %struct.clip_vcc** %3, align 8
  %6 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %7 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %8 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.clip_vcc* %5, %struct.atmarp_entry* %6, %struct.TYPE_2__* %9)
  %11 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %12 = load %struct.clip_vcc*, %struct.clip_vcc** %3, align 8
  %13 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %12, i32 0, i32 2
  store %struct.atmarp_entry* %11, %struct.atmarp_entry** %13, align 8
  %14 = load %struct.clip_vcc*, %struct.clip_vcc** %3, align 8
  %15 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %17 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %16, i32 0, i32 1
  %18 = load %struct.clip_vcc*, %struct.clip_vcc** %17, align 8
  %19 = load %struct.clip_vcc*, %struct.clip_vcc** %3, align 8
  %20 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %19, i32 0, i32 0
  store %struct.clip_vcc* %18, %struct.clip_vcc** %20, align 8
  %21 = load %struct.clip_vcc*, %struct.clip_vcc** %3, align 8
  %22 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %23 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %22, i32 0, i32 1
  store %struct.clip_vcc* %21, %struct.clip_vcc** %23, align 8
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %26 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.clip_vcc*, %struct.atmarp_entry*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

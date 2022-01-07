; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_share.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gf1_mem_block = type { i32, %struct.snd_gf1_mem_block* }
%struct.snd_gf1_mem = type { %struct.snd_gf1_mem_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_gf1_mem_block* (%struct.snd_gf1_mem*, i32*)* @snd_gf1_mem_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_gf1_mem_block* @snd_gf1_mem_share(%struct.snd_gf1_mem* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_gf1_mem_block*, align 8
  %4 = alloca %struct.snd_gf1_mem*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.snd_gf1_mem_block*, align 8
  store %struct.snd_gf1_mem* %0, %struct.snd_gf1_mem** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %3, align 8
  br label %49

27:                                               ; preds = %21, %16, %11, %2
  %28 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %29 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %28, i32 0, i32 0
  %30 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %29, align 8
  store %struct.snd_gf1_mem_block* %30, %struct.snd_gf1_mem_block** %6, align 8
  br label %31

31:                                               ; preds = %44, %27
  %32 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %33 = icmp ne %struct.snd_gf1_mem_block* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %37 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcmp(i32* %35, i32 %38, i32 8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  store %struct.snd_gf1_mem_block* %42, %struct.snd_gf1_mem_block** %3, align 8
  br label %49

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %46 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %45, i32 0, i32 1
  %47 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %46, align 8
  store %struct.snd_gf1_mem_block* %47, %struct.snd_gf1_mem_block** %6, align 8
  br label %31

48:                                               ; preds = %31
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %3, align 8
  br label %49

49:                                               ; preds = %48, %41, %26
  %50 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %3, align 8
  ret %struct.snd_gf1_mem_block* %50
}

declare dso_local i32 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

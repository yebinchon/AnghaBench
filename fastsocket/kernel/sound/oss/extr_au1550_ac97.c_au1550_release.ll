; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32, i64 }
%struct.au1550_state = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @au1550_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.au1550_state*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.au1550_state*
  store %struct.au1550_state* %9, %struct.au1550_state** %5, align 8
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FMODE_WRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = call i32 (...) @unlock_kernel()
  %19 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @drain_dac(%struct.au1550_state* %19, i32 %24)
  %26 = call i32 (...) @lock_kernel()
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %29 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FMODE_WRITE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %39 = call i32 @stop_dac(%struct.au1550_state* %38)
  %40 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %41 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %46 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %37, %27
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FMODE_READ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %57 = call i32 @stop_adc(%struct.au1550_state* %56)
  %58 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %59 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %64 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %55, %48
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = xor i32 %69, -1
  %71 = load i32, i32* @FMODE_READ, align 4
  %72 = load i32, i32* @FMODE_WRITE, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %76 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %80 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %83 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %82, i32 0, i32 1
  %84 = call i32 @wake_up(i32* %83)
  %85 = call i32 (...) @unlock_kernel()
  ret i32 0
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @drain_dac(%struct.au1550_state*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stop_dac(%struct.au1550_state*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @stop_adc(%struct.au1550_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

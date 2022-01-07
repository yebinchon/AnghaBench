; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_io.c_snd_emu10k1_spi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_io.c_snd_emu10k1_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_spi_write(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 60, i32* %7, align 4
  br label %23

22:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %81

23:                                               ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = icmp ugt i32 %24, 65535
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %81

27:                                               ; preds = %23
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %28, i32 %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, -262144
  %33 = or i32 %32, 131072
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, 65536
  store i32 %35, i32* %6, align 4
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %36, i32 %37, i32 0, i32 %40)
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %42, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %45, i32 %46, i32 0, i32 %49)
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %64, %27
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = call i32 @udelay(i32 10)
  %56 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %56, i32 %57, i32 0)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 65536
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %67

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %51

67:                                               ; preds = %62, %51
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %11, align 4
  br label %81

71:                                               ; preds = %67
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %72, i32 %73, i32 0, i32 %76)
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %78, i32 %79, i32 0)
  store i32 %80, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %71, %70, %26, %22
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load i32, i32* %11, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

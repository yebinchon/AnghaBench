; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_dum_chan_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_dum_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDSTRING_BASEADDR = common dso_local global i64 0, align 8
@BYTES_PER_CMDSTRING = common dso_local global i32 0, align 4
@NR_OF_CMDSTRINGS = common dso_local global i32 0, align 4
@DUM_COM_BASE = common dso_local global i64 0, align 8
@MAX_DUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dum_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dum_chan_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %5 = load i64, i64* @CMDSTRING_BASEADDR, align 8
  %6 = load i32, i32* @BYTES_PER_CMDSTRING, align 4
  %7 = load i32, i32* @NR_OF_CMDSTRINGS, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %5, %9
  store i64 %10, i64* @DUM_COM_BASE, align 8
  %11 = load i64, i64* @DUM_COM_BASE, align 8
  %12 = load i32, i32* @NR_OF_CMDSTRINGS, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call i64 @ioremap_nocache(i64 %11, i32 %15)
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %3, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %87

20:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @NR_OF_CMDSTRINGS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i64, i64* @CMDSTRING_BASEADDR, align 8
  %27 = load i32, i32* @BYTES_PER_CMDSTRING, align 4
  %28 = load i32, i32* %2, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %26, %30
  %32 = load i64*, i64** %3, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = call i32 @iowrite32(i64 %31, i64* %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %21

40:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %48, %40
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @MAX_DUM_CHANNELS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @clear_channel(i32 %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %41

51:                                               ; preds = %41
  %52 = load i64*, i64** %3, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @BYTES_PER_CMDSTRING, align 4
  %55 = load i32, i32* @NR_OF_CMDSTRINGS, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i64 @ioremap_nocache(i64 %53, i32 %56)
  %58 = inttoptr i64 %57 to i64*
  store i64* %58, i64** %4, align 8
  %59 = load i64*, i64** %4, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %84

62:                                               ; preds = %51
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* @NR_OF_CMDSTRINGS, align 4
  %67 = load i32, i32* @BYTES_PER_CMDSTRING, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = udiv i64 %69, 8
  %71 = icmp ult i64 %65, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load i64*, i64** %4, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = call i32 @iowrite32(i64 0, i64* %76)
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load i64*, i64** %4, align 8
  %83 = call i32 @iounmap(i64* %82)
  br label %84

84:                                               ; preds = %81, %61
  %85 = load i64*, i64** %3, align 8
  %86 = call i32 @iounmap(i64* %85)
  br label %87

87:                                               ; preds = %84, %19
  ret void
}

declare dso_local i64 @ioremap_nocache(i64, i32) #1

declare dso_local i32 @iowrite32(i64, i64*) #1

declare dso_local i32 @clear_channel(i32) #1

declare dso_local i32 @iounmap(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

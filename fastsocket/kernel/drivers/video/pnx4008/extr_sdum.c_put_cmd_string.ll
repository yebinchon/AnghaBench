; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_put_cmd_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_put_cmd_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdstring = type { i32, i32, i32, i32, i32 }

@MAX_DUM_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DUM_COM_BASE = common dso_local global i32 0, align 4
@EIOREMAPFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdstring*)* @put_cmd_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_cmd_string(%struct.cmdstring* byval(%struct.cmdstring) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %0, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_DUM_CHANNELS, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %122

19:                                               ; preds = %12
  %20 = load i32, i32* @DUM_COM_BASE, align 4
  %21 = load i32, i32* @MAX_DUM_CHANNELS, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @ioremap_nocache(i32 %20, i32 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %4, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EIOREMAPFAILED, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %122

31:                                               ; preds = %19
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %0, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i32 @ioread32(i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @ioremap_nocache(i32 %38, i32 20)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %3, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @iounmap(i32* %43)
  %45 = load i32, i32* @EIOREMAPFAILED, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %122

47:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %0, i32 0, i32 1
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @iowrite16(i32 %56, i32* %60)
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %48

65:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %0, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 2
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %0, i32 0, i32 4
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  %83 = call i32 @iowrite16(i32 %77, i32* %82)
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %66

87:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %111, %87
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %0, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 2
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %0, i32 0, i32 3
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  %105 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %0, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = call i32 @iowrite16(i32 %99, i32* %109)
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %88

114:                                              ; preds = %88
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @iounmap(i32* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @iounmap(i32* %117)
  br label %119

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %42, %28, %16
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @iowrite16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

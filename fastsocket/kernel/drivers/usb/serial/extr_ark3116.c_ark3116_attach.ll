; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ark3116.c_ark3116_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ark3116.c_ark3116_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error kmalloc -> out of mem?\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"IrDA mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @ark3116_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ark3116_attach(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca i8*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kmalloc(i32 1, i32 %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %105

13:                                               ; preds = %1
  %14 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %15 = call i64 @is_irda(%struct.usb_serial* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  %20 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %21 = call i32 @ARK3116_SND(%struct.usb_serial* %20, i32 3, i32 254, i32 64, i32 8, i32 2)
  %22 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %23 = call i32 @ARK3116_SND(%struct.usb_serial* %22, i32 4, i32 254, i32 64, i32 8, i32 1)
  %24 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %25 = call i32 @ARK3116_SND(%struct.usb_serial* %24, i32 5, i32 254, i32 64, i32 0, i32 8)
  %26 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %27 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %28 = call i64 @is_irda(%struct.usb_serial* %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = call i32 @ARK3116_SND(%struct.usb_serial* %26, i32 6, i32 254, i32 64, i32 %31, i32 11)
  %33 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %34 = call i64 @is_irda(%struct.usb_serial* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %38 = call i32 @ARK3116_SND(%struct.usb_serial* %37, i32 1001, i32 254, i32 64, i32 0, i32 12)
  %39 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %40 = call i32 @ARK3116_SND(%struct.usb_serial* %39, i32 1002, i32 254, i32 64, i32 65, i32 13)
  %41 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %42 = call i32 @ARK3116_SND(%struct.usb_serial* %41, i32 1003, i32 254, i32 64, i32 1, i32 10)
  br label %43

43:                                               ; preds = %36, %19
  %44 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @ARK3116_RCV(%struct.usb_serial* %44, i32 7, i32 254, i32 192, i32 0, i32 3, i32 0, i8* %45)
  %47 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %48 = call i32 @ARK3116_SND(%struct.usb_serial* %47, i32 8, i32 254, i32 64, i32 128, i32 3)
  %49 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %50 = call i32 @ARK3116_SND(%struct.usb_serial* %49, i32 9, i32 254, i32 64, i32 26, i32 0)
  %51 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %52 = call i32 @ARK3116_SND(%struct.usb_serial* %51, i32 10, i32 254, i32 64, i32 0, i32 1)
  %53 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %54 = call i32 @ARK3116_SND(%struct.usb_serial* %53, i32 11, i32 254, i32 64, i32 0, i32 3)
  %55 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @ARK3116_RCV(%struct.usb_serial* %55, i32 12, i32 254, i32 192, i32 0, i32 4, i32 0, i8* %56)
  %58 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %59 = call i32 @ARK3116_SND(%struct.usb_serial* %58, i32 13, i32 254, i32 64, i32 0, i32 4)
  %60 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @ARK3116_RCV(%struct.usb_serial* %60, i32 14, i32 254, i32 192, i32 0, i32 4, i32 0, i8* %61)
  %63 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %64 = call i32 @ARK3116_SND(%struct.usb_serial* %63, i32 15, i32 254, i32 64, i32 0, i32 4)
  %65 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @ARK3116_RCV(%struct.usb_serial* %65, i32 16, i32 254, i32 192, i32 0, i32 4, i32 0, i8* %66)
  %68 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %69 = call i32 @ARK3116_SND(%struct.usb_serial* %68, i32 17, i32 254, i32 64, i32 1, i32 4)
  %70 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @ARK3116_RCV(%struct.usb_serial* %70, i32 18, i32 254, i32 192, i32 0, i32 4, i32 1, i8* %71)
  %73 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %74 = call i32 @ARK3116_SND(%struct.usb_serial* %73, i32 19, i32 254, i32 64, i32 3, i32 4)
  %75 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @ARK3116_RCV(%struct.usb_serial* %75, i32 20, i32 254, i32 192, i32 0, i32 6, i32 255, i8* %76)
  %78 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %79 = call i32 @ARK3116_SND(%struct.usb_serial* %78, i32 147, i32 254, i32 64, i32 131, i32 3)
  %80 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %81 = call i32 @ARK3116_SND(%struct.usb_serial* %80, i32 148, i32 254, i32 64, i32 56, i32 0)
  %82 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %83 = call i32 @ARK3116_SND(%struct.usb_serial* %82, i32 149, i32 254, i32 64, i32 1, i32 1)
  %84 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %85 = call i64 @is_irda(%struct.usb_serial* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %43
  %88 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %89 = call i32 @ARK3116_SND(%struct.usb_serial* %88, i32 1004, i32 254, i32 64, i32 0, i32 9)
  br label %90

90:                                               ; preds = %87, %43
  %91 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %92 = call i32 @ARK3116_SND(%struct.usb_serial* %91, i32 150, i32 254, i32 64, i32 3, i32 3)
  %93 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @ARK3116_RCV(%struct.usb_serial* %93, i32 151, i32 254, i32 192, i32 0, i32 4, i32 3, i8* %94)
  %96 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %97 = call i32 @ARK3116_SND(%struct.usb_serial* %96, i32 152, i32 254, i32 64, i32 0, i32 3)
  %98 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @ARK3116_RCV(%struct.usb_serial* %98, i32 153, i32 254, i32 192, i32 0, i32 3, i32 0, i8* %99)
  %101 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %102 = call i32 @ARK3116_SND(%struct.usb_serial* %101, i32 154, i32 254, i32 64, i32 3, i32 3)
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @kfree(i8* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %90, %9
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i64 @is_irda(%struct.usb_serial*) #1

declare dso_local i32 @ARK3116_SND(%struct.usb_serial*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARK3116_RCV(%struct.usb_serial*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

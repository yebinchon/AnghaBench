; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_parport_uss720_epp_write_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_parport_uss720_epp_write_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport_uss720_private* }
%struct.parport_uss720_private = type { i32* }

@ECR_EPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ECR_PS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parport*, i8*, i64, i32)* @parport_uss720_epp_write_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parport_uss720_epp_write_addr(%struct.parport* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.parport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.parport_uss720_private*, align 8
  %11 = alloca i64, align 8
  store %struct.parport* %0, %struct.parport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.parport*, %struct.parport** %6, align 8
  %13 = getelementptr inbounds %struct.parport, %struct.parport* %12, i32 0, i32 0
  %14 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %13, align 8
  store %struct.parport_uss720_private* %14, %struct.parport_uss720_private** %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.parport*, %struct.parport** %6, align 8
  %16 = load i32, i32* @ECR_EPP, align 4
  %17 = call i64 @change_mode(%struct.parport* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %61

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %53, %20
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load %struct.parport*, %struct.parport** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i64 @set_1284_register(%struct.parport* %26, i32 3, i8 signext %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %56

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load %struct.parport*, %struct.parport** %6, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64 @get_1284_register(%struct.parport* %36, i32 1, i32* null, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %56

41:                                               ; preds = %33
  %42 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %10, align 8
  %43 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.parport*, %struct.parport** %6, align 8
  %51 = call i32 @clear_epp_timeout(%struct.parport* %50)
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %21

56:                                               ; preds = %49, %40, %32, %21
  %57 = load %struct.parport*, %struct.parport** %6, align 8
  %58 = load i32, i32* @ECR_PS2, align 4
  %59 = call i64 @change_mode(%struct.parport* %57, i32 %58)
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %56, %19
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local i64 @change_mode(%struct.parport*, i32) #1

declare dso_local i64 @set_1284_register(%struct.parport*, i32, i8 signext, i32) #1

declare dso_local i64 @get_1284_register(%struct.parport*, i32, i32*, i32) #1

declare dso_local i32 @clear_epp_timeout(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

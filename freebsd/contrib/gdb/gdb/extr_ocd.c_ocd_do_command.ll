; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_do_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_do_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Truncated response packet from OCD device\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ocd_do_command (0x%x):\00", align 1
@OCD_FLAG_PWF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"OCD device can't detect VCC at BDM interface.\00", align 1
@OCD_FLAG_CABLE_DISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"BDM cable appears to be disconnected.\00", align 1
@OCD_LOG_FILE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i32*)* @ocd_do_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocd_do_command(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [100 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  store i8 %15, i8* %16, align 16
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %18 = call i32 @ocd_put_packet(i8* %17, i32 1)
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @remote_timeout, align 4
  %23 = call i8* @ocd_get_packet(i8 zeroext %20, i32* %21, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %3
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ocd_error(i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %29
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @OCD_FLAG_PWF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %62

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @OCD_FLAG_CABLE_DISC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i8, i8* @OCD_LOG_FILE, align 1
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  store i8 %65, i8* %66, align 16
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 1
  store i8 3, i8* %67, align 1
  %68 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %69 = call i32 @ocd_put_packet(i8* %68, i32 2)
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = load i32, i32* @remote_timeout, align 4
  %73 = call i8* @ocd_get_packet(i8 zeroext %71, i32* %13, i32 %72)
  %74 = load i8, i8* @OCD_LOG_FILE, align 1
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  store i8 %74, i8* %75, align 16
  %76 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 1
  store i8 2, i8* %76, align 1
  %77 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %78 = call i32 @ocd_put_packet(i8* %77, i32 2)
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %80 = load i8, i8* %79, align 16
  %81 = load i32, i32* @remote_timeout, align 4
  %82 = call i8* @ocd_get_packet(i8 zeroext %80, i32* %13, i32 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  ret i8* %84
}

declare dso_local i32 @ocd_put_packet(i8*, i32) #1

declare dso_local i8* @ocd_get_packet(i8 zeroext, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ocd_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

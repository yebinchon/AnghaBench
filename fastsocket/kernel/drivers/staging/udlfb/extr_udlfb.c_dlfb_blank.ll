; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.dlfb_data* }
%struct.dlfb_data = type { i8* }

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @dlfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.dlfb_data*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  store %struct.dlfb_data* %9, %struct.dlfb_data** %5, align 8
  %10 = load %struct.dlfb_data*, %struct.dlfb_data** %5, align 8
  %11 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @dlfb_set_register(i8* %13, i32 255, i32 0)
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @dlfb_set_register(i8* %19, i32 31, i32 1)
  store i8* %20, i8** %6, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @dlfb_set_register(i8* %22, i32 31, i32 0)
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @dlfb_set_register(i8* %25, i32 255, i32 255)
  store i8* %26, i8** %6, align 8
  %27 = load %struct.dlfb_data*, %struct.dlfb_data** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.dlfb_data*, %struct.dlfb_data** %5, align 8
  %30 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %27, i32 %35)
  ret i32 0
}

declare dso_local i8* @dlfb_set_register(i8*, i32, i32) #1

declare dso_local i32 @dlfb_bulk_msg(%struct.dlfb_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

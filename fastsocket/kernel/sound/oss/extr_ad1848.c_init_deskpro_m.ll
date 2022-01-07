; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_init_deskpro_m.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_init_deskpro_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_info = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"init_deskpro_m: Dead port 0xc44\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_info*)* @init_deskpro_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_deskpro_m(%struct.address_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.address_info*, align 8
  %4 = alloca i8, align 1
  store %struct.address_info* %0, %struct.address_info** %3, align 8
  %5 = call zeroext i8 @inb(i32 3140)
  store i8 %5, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, 255
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @DDB(i32 %9)
  store i32 0, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = call i32 @outb(i32 16, i32 3140)
  %13 = call i32 @outb(i32 64, i32 3141)
  %14 = call i32 @outb(i32 0, i32 3142)
  %15 = call i32 @outb(i32 232, i32 3143)
  %16 = call i32 @outb(i32 20, i32 3140)
  %17 = call i32 @outb(i32 64, i32 3141)
  %18 = call i32 @outb(i32 0, i32 3142)
  %19 = call i32 @outb(i32 232, i32 3143)
  %20 = call i32 @outb(i32 16, i32 3140)
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %11, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @DDB(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

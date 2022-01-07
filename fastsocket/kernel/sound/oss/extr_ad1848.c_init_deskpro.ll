; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_init_deskpro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_init_deskpro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_info = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"init_deskpro: Dead port 0xc44\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"init_deskpro: Invalid bank1 signature in port 0xc44\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"init_deskpro: Invalid MSS port %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_info*)* @init_deskpro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_deskpro(%struct.address_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.address_info*, align 8
  %4 = alloca i8, align 1
  store %struct.address_info* %0, %struct.address_info** %3, align 8
  %5 = call i32 @inb(i32 3140)
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 255
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @DDB(i32 %10)
  store i32 0, i32* %2, align 4
  br label %87

12:                                               ; preds = %1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %14, 4
  %16 = call i32 @outb(i32 %15, i32 3140)
  %17 = call i32 @inb(i32 3140)
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @DDB(i32 %20)
  store i32 0, i32* %2, align 4
  br label %87

22:                                               ; preds = %12
  store i8 88, i8* %4, align 1
  %23 = load %struct.address_info*, %struct.address_info** %3, align 8
  %24 = getelementptr inbounds %struct.address_info, %struct.address_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %45 [
    i32 1328, label %26
    i32 1540, label %30
    i32 3904, label %35
    i32 3712, label %40
  ]

26:                                               ; preds = %22
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %4, align 1
  br label %51

30:                                               ; preds = %22
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, 1
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %4, align 1
  br label %51

35:                                               ; preds = %22
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 2
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %4, align 1
  br label %51

40:                                               ; preds = %22
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, 3
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %4, align 1
  br label %51

45:                                               ; preds = %22
  %46 = load %struct.address_info*, %struct.address_info** %3, align 8
  %47 = getelementptr inbounds %struct.address_info, %struct.address_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = call i32 @DDB(i32 %49)
  store i32 0, i32* %2, align 4
  br label %87

51:                                               ; preds = %40, %35, %30, %26
  %52 = load i8, i8* %4, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, -5
  %55 = call i32 @outb(i32 %54, i32 3140)
  %56 = load i8, i8* %4, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, -5
  %59 = call i32 @outb(i32 %58, i32 3140)
  %60 = call i32 @outb(i32 136, i32 3141)
  %61 = load i8, i8* %4, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, 4
  %64 = call i32 @outb(i32 %63, i32 3140)
  %65 = call i32 @outb(i32 16, i32 3141)
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, -5
  %69 = call i32 @outb(i32 %68, i32 3140)
  %70 = call i32 @outb(i32 3, i32 3142)
  %71 = load i8, i8* %4, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %72, 4
  %74 = call i32 @outb(i32 %73, i32 3140)
  %75 = call i32 @outb(i32 17, i32 3142)
  %76 = load i8, i8* %4, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, -5
  %79 = call i32 @outb(i32 %78, i32 3140)
  %80 = call i32 @outb(i32 124, i32 3143)
  %81 = load i8, i8* %4, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %82, 4
  %84 = call i32 @outb(i32 %83, i32 3140)
  %85 = call i32 @outb(i32 0, i32 3143)
  %86 = call i32 @outb(i32 128, i32 3183)
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %51, %45, %19, %9
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @DDB(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

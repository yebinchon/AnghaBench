; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_install_nfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_install_nfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [77 x i8] c"ifconfig eth0 134.96.81.36 netmask 255.255.255.224 broadcast 134.96.81.63 %s\00", align 1
@null = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"route add -net 134.96.81.32 %s\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"mount -t nfs 134.96.81.38:/local/ftp/pub/linux/ELF.binary/tar /source %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/base\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"umount /source %s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ifconfig eth0 down %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_nfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_nfs() #0 {
  %1 = load i32, i32* @null, align 4
  %2 = call i64 @my_system(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %26

5:                                                ; preds = %0
  %6 = load i32, i32* @null, align 4
  %7 = call i64 @my_system(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %26

10:                                               ; preds = %5
  %11 = load i32, i32* @null, align 4
  %12 = call i64 @my_system(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %26

15:                                               ; preds = %10
  %16 = call i32 @extract_packages(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @null, align 4
  %18 = call i64 @my_system(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @null, align 4
  %23 = call i64 @my_system(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %4, %9, %14, %20, %25, %21
  ret void
}

declare dso_local i64 @my_system(i8*, i32) #1

declare dso_local i32 @extract_packages(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

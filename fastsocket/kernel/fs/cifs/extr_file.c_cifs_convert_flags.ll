; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_convert_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_convert_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@READ_CONTROL = common dso_local global i32 0, align 4
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_WRITE_EA = common dso_local global i32 0, align 4
@FILE_APPEND_DATA = common dso_local global i32 0, align 4
@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cifs_convert_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_convert_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @O_ACCMODE, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @GENERIC_READ, align 4
  store i32 %10, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @O_ACCMODE, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @O_WRONLY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @GENERIC_WRITE, align 4
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @O_ACCMODE, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @GENERIC_READ, align 4
  %27 = load i32, i32* @GENERIC_WRITE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @READ_CONTROL, align 4
  %33 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @FILE_WRITE_EA, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FILE_APPEND_DATA, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FILE_WRITE_DATA, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FILE_READ_DATA, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %31, %25, %17, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

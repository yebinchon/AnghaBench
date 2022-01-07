; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_validate_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_validate_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dev_ioctl = type { i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"invalid device control module version supplied for cmd(0x%08x)\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"path string terminator missing for cmd(0x%08x)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid path supplied for cmd(0x%08x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.autofs_dev_ioctl*)* @validate_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_dev_ioctl(i32 %0, %struct.autofs_dev_ioctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.autofs_dev_ioctl*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.autofs_dev_ioctl* %1, %struct.autofs_dev_ioctl** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %8 = call i32 @check_dev_ioctl_version(i32 %6, %struct.autofs_dev_ioctl* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @AUTOFS_WARN(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %16 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 8
  br i1 %19, label %20, label %47

20:                                               ; preds = %14
  %21 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %22 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %25 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @invalid_str(i32 %23, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @AUTOFS_WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %48

36:                                               ; preds = %20
  %37 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %38 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @check_name(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @AUTOFS_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %48

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %14
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %43, %33, %11
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @check_dev_ioctl_version(i32, %struct.autofs_dev_ioctl*) #1

declare dso_local i32 @AUTOFS_WARN(i8*, i32) #1

declare dso_local i32 @invalid_str(i32, i32) #1

declare dso_local i32 @check_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

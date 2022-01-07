; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/conf/checkmount/extr_checkmount_bsd44.c_fixmount_check_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/conf/checkmount/extr_checkmount_bsd44.c_fixmount_check_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.statfs = type { i32 }

@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getmntinfo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fixmount_check_mount(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.statfs*, align 8
  %9 = alloca %struct.statfs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %13, align 4
  store i8* %0, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @MNT_NOWAIT, align 4
  %15 = call i32 @getmntinfo(%struct.statfs** %8, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %3
  %22 = load %struct.statfs*, %struct.statfs** %8, align 8
  store %struct.statfs* %22, %struct.statfs** %9, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %52, %21
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load %struct.statfs*, %struct.statfs** %9, align 8
  %29 = getelementptr inbounds %struct.statfs, %struct.statfs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @strchr(i32 %30, i8 signext 58)
  store i8* %31, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load i8*, i8** %12, align 8
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @STREQ(i8* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.statfs*, %struct.statfs** %9, align 8
  %42 = getelementptr inbounds %struct.statfs, %struct.statfs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @is_same_host(i32 %43, i8* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %56

50:                                               ; preds = %40, %33
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %23

55:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i64 @is_same_host(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

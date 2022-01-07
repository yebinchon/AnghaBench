; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_notice.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_notice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bfd_link_info = type { i32*, i32 }

@command_line = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nocrossref_list = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%B: reference to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%B: definition of %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, i8*, i32*, i32*, i32)* @notice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notice(%struct.bfd_link_info* %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %5
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @command_line, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** @nocrossref_list, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %14
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @handle_asneeded_cref(i32* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %72

24:                                               ; preds = %17
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %6, align 4
  br label %72

26:                                               ; preds = %5
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %28 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %33 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %38 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32* @bfd_hash_lookup(i32* %39, i8* %40, i32 %41, i32 %42)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %36, %26
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @bfd_is_und_section(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @einfo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %50, i8* %51)
  br label %57

53:                                               ; preds = %45
  %54 = load i32*, i32** %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @einfo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %36, %31
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @command_line, i32 0, i32 0), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** @nocrossref_list, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @add_cref(i8* %65, i32* %66, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %24, %20
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @handle_asneeded_cref(i32*, i32) #1

declare dso_local i32* @bfd_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i64 @bfd_is_und_section(i32*) #1

declare dso_local i32 @einfo(i8*, i32*, i8*) #1

declare dso_local i32 @add_cref(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

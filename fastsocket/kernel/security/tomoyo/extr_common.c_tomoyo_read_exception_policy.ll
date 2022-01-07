; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_read_exception_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_read_exception_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_read_exception_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_read_exception_policy(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  %4 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %5 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %94, label %8

8:                                                ; preds = %1
  %9 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %90 [
    i32 0, label %12
    i32 1, label %17
    i32 2, label %27
    i32 3, label %37
    i32 4, label %42
    i32 5, label %52
    i32 6, label %62
    i32 7, label %67
    i32 8, label %77
    i32 9, label %87
  ]

12:                                               ; preds = %8
  %13 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %8, %12
  %18 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %19 = call i32 @tomoyo_read_domain_keeper_policy(%struct.tomoyo_io_buffer* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %93

22:                                               ; preds = %17
  %23 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %25, i32 0, i32 1
  store i32 2, i32* %26, align 4
  br label %27

27:                                               ; preds = %8, %22
  %28 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %29 = call i32 @tomoyo_read_globally_readable_policy(%struct.tomoyo_io_buffer* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %93

32:                                               ; preds = %27
  %33 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %35, i32 0, i32 1
  store i32 3, i32* %36, align 4
  br label %37

37:                                               ; preds = %8, %32
  %38 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %41 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %40, i32 0, i32 1
  store i32 4, i32* %41, align 4
  br label %42

42:                                               ; preds = %8, %37
  %43 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %44 = call i32 @tomoyo_read_domain_initializer_policy(%struct.tomoyo_io_buffer* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %93

47:                                               ; preds = %42
  %48 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %49 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %50, i32 0, i32 1
  store i32 5, i32* %51, align 4
  br label %52

52:                                               ; preds = %8, %47
  %53 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %54 = call i32 @tomoyo_read_alias_policy(%struct.tomoyo_io_buffer* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %93

57:                                               ; preds = %52
  %58 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %59 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %61 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %60, i32 0, i32 1
  store i32 6, i32* %61, align 4
  br label %62

62:                                               ; preds = %8, %57
  %63 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %64 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %66 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %65, i32 0, i32 1
  store i32 7, i32* %66, align 4
  br label %67

67:                                               ; preds = %8, %62
  %68 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %69 = call i32 @tomoyo_read_file_pattern(%struct.tomoyo_io_buffer* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %93

72:                                               ; preds = %67
  %73 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %74 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %76 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %75, i32 0, i32 1
  store i32 8, i32* %76, align 4
  br label %77

77:                                               ; preds = %8, %72
  %78 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %79 = call i32 @tomoyo_read_no_rewrite_policy(%struct.tomoyo_io_buffer* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %93

82:                                               ; preds = %77
  %83 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %84 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %83, i32 0, i32 2
  store i32* null, i32** %84, align 8
  %85 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %86 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %85, i32 0, i32 1
  store i32 9, i32* %86, align 4
  br label %87

87:                                               ; preds = %8, %82
  %88 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %89 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %93

90:                                               ; preds = %8
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %95

93:                                               ; preds = %87, %81, %71, %56, %46, %31, %21
  br label %94

94:                                               ; preds = %93, %1
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %90
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @tomoyo_read_domain_keeper_policy(%struct.tomoyo_io_buffer*) #1

declare dso_local i32 @tomoyo_read_globally_readable_policy(%struct.tomoyo_io_buffer*) #1

declare dso_local i32 @tomoyo_read_domain_initializer_policy(%struct.tomoyo_io_buffer*) #1

declare dso_local i32 @tomoyo_read_alias_policy(%struct.tomoyo_io_buffer*) #1

declare dso_local i32 @tomoyo_read_file_pattern(%struct.tomoyo_io_buffer*) #1

declare dso_local i32 @tomoyo_read_no_rewrite_policy(%struct.tomoyo_io_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

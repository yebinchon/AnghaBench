; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, i64, i32, i32, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ieee_end_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_end_function(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee_handle*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.ieee_handle*
  store %struct.ieee_handle* %6, %struct.ieee_handle** %4, align 8
  %7 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %8 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %18 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %19 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %18, i32 0, i32 3
  %20 = call i32 @ieee_change_buffer(%struct.ieee_handle* %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %24 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %25 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ieee_write_number(%struct.ieee_handle* %23, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %31 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %32 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %31, i32 0, i32 2
  %33 = call i32 @ieee_change_buffer(%struct.ieee_handle* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %37 = call i32 @ieee_write_number(%struct.ieee_handle* %36, i64 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %29, %22, %1
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %2, align 4
  br label %114

41:                                               ; preds = %35
  %42 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %43 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %42, i32 0, i32 5
  %44 = call i64 @ieee_buffer_emptyp(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %41
  %47 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %48 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %49 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %48, i32 0, i32 5
  %50 = call i32 @ieee_change_buffer(%struct.ieee_handle* %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %54 = load i64, i64* @ieee_bb_record_enum, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ieee_write_byte(%struct.ieee_handle* %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %60 = call i32 @ieee_write_byte(%struct.ieee_handle* %59, i32 1)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %64 = call i32 @ieee_write_number(%struct.ieee_handle* %63, i64 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %69 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ieee_write_id(%struct.ieee_handle* %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66, %62, %58, %52, %46
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %2, align 4
  br label %114

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %41
  %77 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %78 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %79 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %78, i32 0, i32 5
  %80 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %81 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %80, i32 0, i32 3
  %82 = call i32 @ieee_append_buffer(%struct.ieee_handle* %77, i32* %79, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %86 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %87 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %86, i32 0, i32 5
  %88 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %89 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %88, i32 0, i32 2
  %90 = call i32 @ieee_append_buffer(%struct.ieee_handle* %85, i32* %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %84, %76
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %2, align 4
  br label %114

94:                                               ; preds = %84
  %95 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %96 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %95, i32 0, i32 4
  store i32* null, i32** %96, align 8
  %97 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %98 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %99 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %98, i32 0, i32 3
  %100 = call i32 @ieee_init_buffer(%struct.ieee_handle* %97, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %104 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %105 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %104, i32 0, i32 2
  %106 = call i32 @ieee_init_buffer(%struct.ieee_handle* %103, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %102, %94
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %2, align 4
  br label %114

110:                                              ; preds = %102
  %111 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %112 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %108, %92, %73, %39
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i64) #1

declare dso_local i64 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_append_buffer(%struct.ieee_handle*, i32*, i32*) #1

declare dso_local i32 @ieee_init_buffer(%struct.ieee_handle*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

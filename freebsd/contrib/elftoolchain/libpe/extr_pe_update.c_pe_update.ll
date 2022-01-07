; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_update.c_pe_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_update.c_pe_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PE_C_READ = common dso_local global i64 0, align 8
@LIBPE_F_FD_DONE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PE_C_RDWR = common dso_local global i64 0, align 8
@PE_C_WRITE = common dso_local global i64 0, align 8
@LIBPE_F_SPECIAL_FILE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PE_O_PE32 = common dso_local global i64 0, align 8
@PE_O_PE32P = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pe_update(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = icmp eq %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  store i32 %8, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %113

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PE_C_READ, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LIBPE_F_FD_DONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %9
  %23 = load i32, i32* @EACCES, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %113

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PE_C_RDWR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PE_C_WRITE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @LIBPE_F_SPECIAL_FILE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36, %24
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i64 @lseek(i32 %46, i32 0, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @EIO, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %113

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %36, %30
  store i32 0, i32* %4, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PE_O_PE32, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PE_O_PE32P, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59, %53
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @libpe_write_msdos_stub(%struct.TYPE_9__* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 -1, i32* %2, align 4
  br label %113

71:                                               ; preds = %65
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @libpe_write_pe_header(%struct.TYPE_9__* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 -1, i32* %2, align 4
  br label %113

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @libpe_resync_sections(%struct.TYPE_9__* %79, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 -1, i32* %2, align 4
  br label %113

84:                                               ; preds = %78
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @libpe_write_coff_header(%struct.TYPE_9__* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -1, i32* %2, align 4
  br label %113

90:                                               ; preds = %84
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @libpe_write_section_headers(%struct.TYPE_9__* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 -1, i32* %2, align 4
  br label %113

96:                                               ; preds = %90
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @libpe_write_sections(%struct.TYPE_9__* %97, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 -1, i32* %2, align 4
  br label %113

102:                                              ; preds = %96
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i64 @ftruncate(i32 %105, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @EIO, align 4
  store i32 %110, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %109, %101, %95, %89, %83, %76, %70, %50, %22, %7
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @libpe_write_msdos_stub(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @libpe_write_pe_header(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @libpe_resync_sections(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @libpe_write_coff_header(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @libpe_write_section_headers(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @libpe_write_sections(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @ftruncate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

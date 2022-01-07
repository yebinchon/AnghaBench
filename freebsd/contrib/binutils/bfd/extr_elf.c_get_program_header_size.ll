; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_get_program_header_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_get_program_header_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.bfd_link_info = type { i32 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_12__*, %struct.bfd_link_info.0*)*, %struct.TYPE_11__* }
%struct.bfd_link_info.0 = type opaque
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c".interp\00", align 1
@SEC_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".note\00", align 1
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.bfd_link_info*)* @get_program_header_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_program_header_size(%struct.TYPE_12__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.elf_backend_data*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  store i64 2, i64* %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = call %struct.TYPE_13__* @bfd_get_section_by_name(%struct.TYPE_12__* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SEC_LOAD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %20, %13, %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = call %struct.TYPE_13__* @bfd_get_section_by_name(%struct.TYPE_12__* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call %struct.TYPE_14__* @elf_tdata(%struct.TYPE_12__* %30)
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %35, %27
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = call %struct.TYPE_14__* @elf_tdata(%struct.TYPE_12__* %40)
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = call %struct.TYPE_14__* @elf_tdata(%struct.TYPE_12__* %49)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %6, align 8
  br label %61

61:                                               ; preds = %81, %57
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SEC_LOAD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @CONST_STRNEQ(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %77, %71, %64
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %6, align 8
  br label %61

85:                                               ; preds = %61
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %6, align 8
  br label %89

89:                                               ; preds = %103, %85
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %107

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  store %struct.TYPE_13__* %106, %struct.TYPE_13__** %6, align 8
  br label %89

107:                                              ; preds = %99, %89
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_12__* %108)
  store %struct.elf_backend_data* %109, %struct.elf_backend_data** %7, align 8
  %110 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %111 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_12__*, %struct.bfd_link_info.0*)*, i32 (%struct.TYPE_12__*, %struct.bfd_link_info.0*)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_12__*, %struct.bfd_link_info.0*)* %112, null
  br i1 %113, label %114, label %131

114:                                              ; preds = %107
  %115 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %116 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_12__*, %struct.bfd_link_info.0*)*, i32 (%struct.TYPE_12__*, %struct.bfd_link_info.0*)** %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %120 = bitcast %struct.bfd_link_info* %119 to %struct.bfd_link_info.0*
  %121 = call i32 %117(%struct.TYPE_12__* %118, %struct.bfd_link_info.0* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = call i32 (...) @abort() #3
  unreachable

126:                                              ; preds = %114
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %5, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %126, %107
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %134 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = mul i64 %132, %137
  ret i64 %138
}

declare dso_local %struct.TYPE_13__* @bfd_get_section_by_name(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_14__* @elf_tdata(%struct.TYPE_12__*) #1

declare dso_local i64 @CONST_STRNEQ(i32, i8*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_12__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

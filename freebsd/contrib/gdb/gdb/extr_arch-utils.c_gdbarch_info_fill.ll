; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_gdbarch_info_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_gdbarch_info_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i64, i64, i32*, i32* }

@target_architecture_auto = common dso_local global i32 0, align 4
@bfd_arch_unknown = common dso_local global i64 0, align 8
@bfd_arch_obscure = common dso_local global i64 0, align 8
@BFD_ENDIAN_UNKNOWN = common dso_local global i64 0, align 8
@target_byte_order_auto = common dso_local global i32 0, align 4
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@BFD_ENDIAN_LITTLE = common dso_local global i64 0, align 8
@GDB_OSABI_UNINITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbarch_info_fill(%struct.gdbarch* %0, %struct.gdbarch_info* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.gdbarch_info*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.gdbarch_info* %1, %struct.gdbarch_info** %4, align 8
  %5 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %6 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* @target_architecture_auto, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %14 = icmp ne %struct.gdbarch* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %17 = call i8* @gdbarch_bfd_arch_info(%struct.gdbarch* %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %20 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  br label %21

21:                                               ; preds = %15, %12, %9, %2
  %22 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %23 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %28 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %33 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @bfd_get_arch(i32* %34)
  %36 = load i64, i64* @bfd_arch_unknown, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %40 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @bfd_get_arch(i32* %41)
  %43 = load i64, i64* @bfd_arch_obscure, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %47 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @bfd_get_arch_info(i32* %48)
  %50 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %51 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %38, %31, %26, %21
  %53 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %54 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %59 = icmp ne %struct.gdbarch* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %62 = call i8* @gdbarch_bfd_arch_info(%struct.gdbarch* %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %65 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %60, %57, %52
  %67 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %68 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BFD_ENDIAN_UNKNOWN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32, i32* @target_byte_order_auto, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %77 = icmp ne %struct.gdbarch* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %80 = call i8* @gdbarch_byte_order(%struct.gdbarch* %79)
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %83 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %75, %72, %66
  %85 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %86 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BFD_ENDIAN_UNKNOWN, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %84
  %91 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %92 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %119

95:                                               ; preds = %90
  %96 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %97 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @bfd_big_endian(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  br label %115

103:                                              ; preds = %95
  %104 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %105 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @bfd_little_endian(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  br label %113

111:                                              ; preds = %103
  %112 = load i64, i64* @BFD_ENDIAN_UNKNOWN, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i64 [ %110, %109 ], [ %112, %111 ]
  br label %115

115:                                              ; preds = %113, %101
  %116 = phi i64 [ %102, %101 ], [ %114, %113 ]
  %117 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %118 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %90, %84
  %120 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %121 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @BFD_ENDIAN_UNKNOWN, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %127 = icmp ne %struct.gdbarch* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %130 = call i8* @gdbarch_byte_order(%struct.gdbarch* %129)
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %133 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %128, %125, %119
  %135 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %136 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @GDB_OSABI_UNINITIALIZED, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %142 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = call i64 @gdbarch_lookup_osabi(i32* %143)
  %145 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %146 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %140, %134
  %148 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %149 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @GDB_OSABI_UNINITIALIZED, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %155 = icmp ne %struct.gdbarch* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %158 = call i64 @gdbarch_osabi(%struct.gdbarch* %157)
  %159 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %160 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %153, %147
  %162 = load %struct.gdbarch_info*, %struct.gdbarch_info** %4, align 8
  %163 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  %166 = zext i1 %165 to i32
  %167 = call i32 @gdb_assert(i32 %166)
  ret void
}

declare dso_local i8* @gdbarch_bfd_arch_info(%struct.gdbarch*) #1

declare dso_local i64 @bfd_get_arch(i32*) #1

declare dso_local i32* @bfd_get_arch_info(i32*) #1

declare dso_local i8* @gdbarch_byte_order(%struct.gdbarch*) #1

declare dso_local i64 @bfd_big_endian(i32*) #1

declare dso_local i64 @bfd_little_endian(i32*) #1

declare dso_local i64 @gdbarch_lookup_osabi(i32*) #1

declare dso_local i64 @gdbarch_osabi(%struct.gdbarch*) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

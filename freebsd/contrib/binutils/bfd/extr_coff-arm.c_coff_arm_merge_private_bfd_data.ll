; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_coff_arm_merge_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_coff_arm_merge_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@bfd_target_coff_flavour = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"ERROR: %B is compiled for APCS-%d, whereas %B is compiled for APCS-%d\00", align 1
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"ERROR: %B passes floats in float registers, whereas %B passes them in integer registers\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"ERROR: %B passes floats in integer registers, whereas %B passes them in float registers\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"ERROR: %B is compiled as position independent code, whereas target %B is absolute position\00", align 1
@.str.4 = private unnamed_addr constant [91 x i8] c"ERROR: %B is compiled as absolute position code, whereas target %B is position independent\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Warning: %B supports interworking, whereas %B does not\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Warning: %B does not support interworking, whereas %B does\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_21__*)* @coff_arm_merge_private_bfd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_arm_merge_private_bfd_data(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %10 = icmp ne %struct.TYPE_21__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %13 = icmp ne %struct.TYPE_21__* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @BFD_ASSERT(i32 %16)
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = icmp eq %struct.TYPE_21__* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %3, align 4
  br label %179

23:                                               ; preds = %14
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @bfd_target_coff_flavour, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @bfd_target_coff_flavour, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %23
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %179

41:                                               ; preds = %31
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = call i32 @bfd_arm_merge_machines(%struct.TYPE_21__* %42, %struct.TYPE_21__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %179

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = call i64 @APCS_SET(%struct.TYPE_21__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %143

52:                                               ; preds = %48
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = call i64 @APCS_SET(%struct.TYPE_21__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %125

56:                                               ; preds = %52
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = call i32 @APCS_26_FLAG(%struct.TYPE_21__* %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = call i32 @APCS_26_FLAG(%struct.TYPE_21__* %59)
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = call i32 @APCS_26_FLAG(%struct.TYPE_21__* %66)
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 26, i32 32
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = call i32 @APCS_26_FLAG(%struct.TYPE_21__* %71)
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 26, i32 32
  %76 = call i32 (i8*, %struct.TYPE_21__*, %struct.TYPE_21__*, ...) @_bfd_error_handler(i8* %63, %struct.TYPE_21__* %64, %struct.TYPE_21__* %65, i32 %70, i32 %75)
  %77 = load i32, i32* @bfd_error_wrong_format, align 4
  %78 = call i32 @bfd_set_error(i32 %77)
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %179

80:                                               ; preds = %56
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = call i32 @APCS_FLOAT_FLAG(%struct.TYPE_21__* %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %84 = call i32 @APCS_FLOAT_FLAG(%struct.TYPE_21__* %83)
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = call i32 @APCS_FLOAT_FLAG(%struct.TYPE_21__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i8* @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0))
  store i8* %91, i8** %6, align 8
  br label %94

92:                                               ; preds = %86
  %93 = call i8* @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  store i8* %93, i8** %6, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = call i32 (i8*, %struct.TYPE_21__*, %struct.TYPE_21__*, ...) @_bfd_error_handler(i8* %95, %struct.TYPE_21__* %96, %struct.TYPE_21__* %97)
  %99 = load i32, i32* @bfd_error_wrong_format, align 4
  %100 = call i32 @bfd_set_error(i32 %99)
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %179

102:                                              ; preds = %80
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = call i32 @PIC_FLAG(%struct.TYPE_21__* %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = call i32 @PIC_FLAG(%struct.TYPE_21__* %105)
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = call i32 @PIC_FLAG(%struct.TYPE_21__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i8* @_(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0))
  store i8* %113, i8** %7, align 8
  br label %116

114:                                              ; preds = %108
  %115 = call i8* @_(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0))
  store i8* %115, i8** %7, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = call i32 (i8*, %struct.TYPE_21__*, %struct.TYPE_21__*, ...) @_bfd_error_handler(i8* %117, %struct.TYPE_21__* %118, %struct.TYPE_21__* %119)
  %121 = load i32, i32* @bfd_error_wrong_format, align 4
  %122 = call i32 @bfd_set_error(i32 %121)
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %3, align 4
  br label %179

124:                                              ; preds = %102
  br label %142

125:                                              ; preds = %52
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %128 = call i32 @APCS_26_FLAG(%struct.TYPE_21__* %127)
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = call i32 @APCS_FLOAT_FLAG(%struct.TYPE_21__* %129)
  %131 = or i32 %128, %130
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = call i32 @PIC_FLAG(%struct.TYPE_21__* %132)
  %134 = or i32 %131, %133
  %135 = call i32 @SET_APCS_FLAGS(%struct.TYPE_21__* %126, i32 %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %138 = call i32 @bfd_get_arch(%struct.TYPE_21__* %137)
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %140 = call i32 @bfd_get_mach(%struct.TYPE_21__* %139)
  %141 = call i32 @bfd_set_arch_mach(%struct.TYPE_21__* %136, i32 %138, i32 %140)
  br label %142

142:                                              ; preds = %125, %124
  br label %143

143:                                              ; preds = %142, %48
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %145 = call i64 @INTERWORK_SET(%struct.TYPE_21__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %177

147:                                              ; preds = %143
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = call i64 @INTERWORK_SET(%struct.TYPE_21__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %147
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %153 = call i64 @INTERWORK_FLAG(%struct.TYPE_21__* %152)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %155 = call i64 @INTERWORK_FLAG(%struct.TYPE_21__* %154)
  %156 = icmp ne i64 %153, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %151
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = call i64 @INTERWORK_FLAG(%struct.TYPE_21__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  store i8* %162, i8** %8, align 8
  br label %165

163:                                              ; preds = %157
  %164 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = load i8*, i8** %8, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %169 = call i32 (i8*, %struct.TYPE_21__*, %struct.TYPE_21__*, ...) @_bfd_error_handler(i8* %166, %struct.TYPE_21__* %167, %struct.TYPE_21__* %168)
  br label %170

170:                                              ; preds = %165, %151
  br label %176

171:                                              ; preds = %147
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = call i64 @INTERWORK_FLAG(%struct.TYPE_21__* %173)
  %175 = call i32 @SET_INTERWORK_FLAG(%struct.TYPE_21__* %172, i64 %174)
  br label %176

176:                                              ; preds = %171, %170
  br label %177

177:                                              ; preds = %176, %143
  %178 = load i32, i32* @TRUE, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %116, %94, %62, %46, %39, %21
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_arm_merge_machines(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @APCS_SET(%struct.TYPE_21__*) #1

declare dso_local i32 @APCS_26_FLAG(%struct.TYPE_21__*) #1

declare dso_local i32 @_bfd_error_handler(i8*, %struct.TYPE_21__*, %struct.TYPE_21__*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @APCS_FLOAT_FLAG(%struct.TYPE_21__*) #1

declare dso_local i32 @PIC_FLAG(%struct.TYPE_21__*) #1

declare dso_local i32 @SET_APCS_FLAGS(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @bfd_get_arch(%struct.TYPE_21__*) #1

declare dso_local i32 @bfd_get_mach(%struct.TYPE_21__*) #1

declare dso_local i64 @INTERWORK_SET(%struct.TYPE_21__*) #1

declare dso_local i64 @INTERWORK_FLAG(%struct.TYPE_21__*) #1

declare dso_local i32 @SET_INTERWORK_FLAG(%struct.TYPE_21__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

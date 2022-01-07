; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_gdb_cmd_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_gdb_cmd_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32, i8)*, i32, i32 (i64, i32, i8)* }
%struct.kgdb_state = type { i32 }

@remcom_in_buffer = common dso_local global i8* null, align 8
@arch_kgdb_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KGDB_HW_BREAKPOINT = common dso_local global i32 0, align 4
@remcom_out_buffer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kgdb_state*)* @gdb_cmd_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_cmd_break(%struct.kgdb_state* %0) #0 {
  %2 = alloca %struct.kgdb_state*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kgdb_state* %0, %struct.kgdb_state** %2, align 8
  %8 = load i8*, i8** @remcom_in_buffer, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** @remcom_in_buffer, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %11, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32 (i64, i32, i8)*, i32 (i64, i32, i8)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 0), align 8
  %13 = icmp ne i32 (i64, i32, i8)* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 49
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sgt i32 %22, 52
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %157

25:                                               ; preds = %19
  br label %38

26:                                               ; preds = %14, %1
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 48
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 49
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %157

37:                                               ; preds = %31, %26
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 49
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 1), align 8
  %45 = load i32, i32* @KGDB_HW_BREAKPOINT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %157

49:                                               ; preds = %43, %38
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 44
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @remcom_out_buffer, align 4
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @error_packet(i32 %56, i32 %58)
  br label %157

60:                                               ; preds = %49
  %61 = call i32 @kgdb_hex2long(i8** %4, i64* %5)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @remcom_out_buffer, align 4
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @error_packet(i32 %64, i32 %66)
  br label %157

68:                                               ; preds = %60
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %4, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 44
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = call i32 @kgdb_hex2long(i8** %4, i64* %6)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74, %68
  %78 = load i32, i32* @remcom_out_buffer, align 4
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @error_packet(i32 %78, i32 %80)
  br label %157

82:                                               ; preds = %74
  %83 = load i8*, i8** @remcom_in_buffer, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 90
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i8*, i8** %3, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 48
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @kgdb_set_sw_break(i64 %94)
  store i32 %95, i32* %7, align 4
  br label %147

96:                                               ; preds = %88, %82
  %97 = load i8*, i8** @remcom_in_buffer, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 122
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load i8*, i8** %3, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 48
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @kgdb_remove_sw_break(i64 %108)
  store i32 %109, i32* %7, align 4
  br label %146

110:                                              ; preds = %102, %96
  %111 = load i8*, i8** @remcom_in_buffer, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 90
  br i1 %115, label %116, label %127

116:                                              ; preds = %110
  %117 = load i32 (i64, i32, i8)*, i32 (i64, i32, i8)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 0), align 8
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* %6, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i8*, i8** %3, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 48
  %125 = trunc i32 %124 to i8
  %126 = call i32 %117(i64 %118, i32 %120, i8 signext %125)
  store i32 %126, i32* %7, align 4
  br label %145

127:                                              ; preds = %110
  %128 = load i8*, i8** @remcom_in_buffer, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 122
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i32 (i64, i32, i8)*, i32 (i64, i32, i8)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 2), align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %6, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i8*, i8** %3, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = sub nsw i32 %140, 48
  %142 = trunc i32 %141 to i8
  %143 = call i32 %134(i64 %135, i32 %137, i8 signext %142)
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %133, %127
  br label %145

145:                                              ; preds = %144, %116
  br label %146

146:                                              ; preds = %145, %107
  br label %147

147:                                              ; preds = %146, %93
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* @remcom_out_buffer, align 4
  %152 = call i32 @strcpy(i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %157

153:                                              ; preds = %147
  %154 = load i32, i32* @remcom_out_buffer, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @error_packet(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %24, %36, %48, %55, %63, %77, %153, %150
  ret void
}

declare dso_local i32 @error_packet(i32, i32) #1

declare dso_local i32 @kgdb_hex2long(i8**, i64*) #1

declare dso_local i32 @kgdb_set_sw_break(i64) #1

declare dso_local i32 @kgdb_remove_sw_break(i64) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_pnp_card_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_pnp_card_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32 }
%struct.pnp_card_device_id = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@PNP_MAX_DEVICES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MODULE_ALIAS(\22pnp:d%s*\22);\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"MODULE_ALIAS(\22acpi*:%s:*\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.module*)* @do_pnp_card_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pnp_card_entries(i8* %0, i64 %1, %struct.module* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pnp_card_device_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pnp_card_device_id*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pnp_card_device_id*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [8 x i8], align 1
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  store i64 8, i64* %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = udiv i64 %21, 8
  %23 = sub i64 %22, 1
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.pnp_card_device_id*
  store %struct.pnp_card_device_id* %26, %struct.pnp_card_device_id** %9, align 8
  %27 = load %struct.module*, %struct.module** %6, align 8
  %28 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @device_id_check(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %30, i64 8, i8* %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %145, %3
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %148

37:                                               ; preds = %33
  %38 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pnp_card_device_id, %struct.pnp_card_device_id* %38, i64 %40
  store %struct.pnp_card_device_id* %41, %struct.pnp_card_device_id** %12, align 8
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %141, %37
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @PNP_MAX_DEVICES, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %144

46:                                               ; preds = %42
  %47 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %12, align 8
  %48 = getelementptr inbounds %struct.pnp_card_device_id, %struct.pnp_card_device_id* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %13, align 8
  store i32 0, i32* %16, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  br label %144

61:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %107, %61
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i1 [ false, %62 ], [ %69, %66 ]
  br i1 %71, label %72, label %110

72:                                               ; preds = %70
  %73 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %9, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.pnp_card_device_id, %struct.pnp_card_device_id* %73, i64 %75
  store %struct.pnp_card_device_id* %76, %struct.pnp_card_device_id** %17, align 8
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %103, %72
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @PNP_MAX_DEVICES, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load %struct.pnp_card_device_id*, %struct.pnp_card_device_id** %17, align 8
  %83 = getelementptr inbounds %struct.pnp_card_device_id, %struct.pnp_card_device_id* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %18, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %81
  br label %106

96:                                               ; preds = %81
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = call i32 @strcmp(i8* %97, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 1, i32* %16, align 4
  br label %106

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %77

106:                                              ; preds = %101, %95, %77
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %62

110:                                              ; preds = %70
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %140, label %113

113:                                              ; preds = %110
  %114 = load %struct.module*, %struct.module** %6, align 8
  %115 = getelementptr inbounds %struct.module, %struct.module* %114, i32 0, i32 0
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @buf_printf(i32* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %116)
  store i32 0, i32* %20, align 4
  br label %118

118:                                              ; preds = %132, %113
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ult i64 %120, 8
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load i8*, i8** %13, align 8
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = call signext i8 @toupper(i8 signext %127)
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 %130
  store i8 %128, i8* %131, align 1
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %20, align 4
  br label %118

135:                                              ; preds = %118
  %136 = load %struct.module*, %struct.module** %6, align 8
  %137 = getelementptr inbounds %struct.module, %struct.module* %136, i32 0, i32 0
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %139 = call i32 @buf_printf(i32* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %110
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %11, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %42

144:                                              ; preds = %60, %42
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %33

148:                                              ; preds = %33
  ret void
}

declare dso_local i32 @device_id_check(i32, i8*, i64, i64, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @buf_printf(i32*, i8*, i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

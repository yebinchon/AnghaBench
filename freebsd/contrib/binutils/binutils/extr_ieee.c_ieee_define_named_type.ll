; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_define_named_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_define_named_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, i32, i8*, %struct.ieee_buflist, %struct.ieee_buflist }
%struct.ieee_buflist = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@ieee_nn_record = common dso_local global i64 0, align 8
@ieee_ty_record_enum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i8*, i32, i32, i32, i32, %struct.ieee_buflist*)* @ieee_define_named_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_define_named_type(%struct.ieee_handle* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.ieee_buflist* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee_handle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee_buflist*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee_handle* %0, %struct.ieee_handle** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ieee_buflist* %6, %struct.ieee_buflist** %15, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %16, align 4
  br label %30

22:                                               ; preds = %7
  %23 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %24 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %16, align 4
  %26 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %27 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %22, %20
  %31 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %32 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %35 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %41

41:                                               ; preds = %40, %30
  %42 = load %struct.ieee_buflist*, %struct.ieee_buflist** %15, align 8
  %43 = icmp ne %struct.ieee_buflist* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %46 = load %struct.ieee_buflist*, %struct.ieee_buflist** %15, align 8
  %47 = call i32 @ieee_change_buffer(%struct.ieee_handle* %45, %struct.ieee_buflist* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %8, align 4
  br label %192

51:                                               ; preds = %44
  br label %143

52:                                               ; preds = %41
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %52
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %57 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %56, i32 0, i32 4
  %58 = call i32 @ieee_buffer_emptyp(%struct.ieee_buflist* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %62 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %63 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %62, i32 0, i32 4
  %64 = call i32 @ieee_change_buffer(%struct.ieee_handle* %61, %struct.ieee_buflist* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %8, align 4
  br label %192

68:                                               ; preds = %60
  br label %99

69:                                               ; preds = %55
  %70 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %71 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %72 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %71, i32 0, i32 4
  %73 = call i32 @ieee_change_buffer(%struct.ieee_handle* %70, %struct.ieee_buflist* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %77 = load i64, i64* @ieee_bb_record_enum, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i64 @ieee_write_byte(%struct.ieee_handle* %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %83 = call i64 @ieee_write_byte(%struct.ieee_handle* %82, i32 1)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %87 = call i64 @ieee_write_number(%struct.ieee_handle* %86, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %91 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %92 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @ieee_write_id(%struct.ieee_handle* %90, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %89, %85, %81, %75, %69
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %8, align 4
  br label %192

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %68
  br label %142

100:                                              ; preds = %52
  %101 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %102 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %101, i32 0, i32 3
  %103 = call i32 @ieee_buffer_emptyp(%struct.ieee_buflist* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %100
  %106 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %107 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %108 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %107, i32 0, i32 3
  %109 = call i32 @ieee_change_buffer(%struct.ieee_handle* %106, %struct.ieee_buflist* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %8, align 4
  br label %192

113:                                              ; preds = %105
  br label %141

114:                                              ; preds = %100
  %115 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %116 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %117 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %116, i32 0, i32 3
  %118 = call i32 @ieee_change_buffer(%struct.ieee_handle* %115, %struct.ieee_buflist* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %114
  %121 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %122 = load i64, i64* @ieee_bb_record_enum, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i64 @ieee_write_byte(%struct.ieee_handle* %121, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %128 = call i64 @ieee_write_byte(%struct.ieee_handle* %127, i32 2)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %132 = call i64 @ieee_write_number(%struct.ieee_handle* %131, i32 0)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %136 = call i64 @ieee_write_id(%struct.ieee_handle* %135, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134, %130, %126, %120, %114
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %8, align 4
  br label %192

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %113
  br label %142

142:                                              ; preds = %141, %99
  br label %143

143:                                              ; preds = %142, %51
  %144 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @ieee_push_type(%struct.ieee_handle* %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %143
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %8, align 4
  br label %192

153:                                              ; preds = %143
  %154 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %155 = load i64, i64* @ieee_nn_record, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i64 @ieee_write_byte(%struct.ieee_handle* %154, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %189

159:                                              ; preds = %153
  %160 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i64 @ieee_write_number(%struct.ieee_handle* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %159
  %165 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = call i64 @ieee_write_id(%struct.ieee_handle* %165, i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %164
  %170 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %171 = load i64, i64* @ieee_ty_record_enum, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i64 @ieee_write_byte(%struct.ieee_handle* %170, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %177 = load i32, i32* %16, align 4
  %178 = call i64 @ieee_write_number(%struct.ieee_handle* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %175
  %181 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %182 = call i64 @ieee_write_byte(%struct.ieee_handle* %181, i32 206)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load %struct.ieee_handle*, %struct.ieee_handle** %9, align 8
  %186 = load i32, i32* %17, align 4
  %187 = call i64 @ieee_write_number(%struct.ieee_handle* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %184, %180, %175, %169, %164, %159, %153
  %190 = phi i1 [ false, %180 ], [ false, %175 ], [ false, %169 ], [ false, %164 ], [ false, %159 ], [ false, %153 ], [ %188, %184 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %189, %151, %138, %111, %96, %66, %49
  %193 = load i32, i32* %8, align 4
  ret i32 %193
}

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_buffer_emptyp(%struct.ieee_buflist*) #1

declare dso_local i64 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i64 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i64 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_push_type(%struct.ieee_handle*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

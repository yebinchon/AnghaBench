; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i8*, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ieee_nn_record = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ieee_atn_record_enum = common dso_local global i64 0, align 8
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @ieee_start_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_start_function(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ieee_handle*
  store %struct.ieee_handle* %14, %struct.ieee_handle** %8, align 8
  %15 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %16 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %15, i32 0, i32 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %22 = call i32 @ieee_pop_type(%struct.ieee_handle* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %24 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %23, i32 0, i32 7
  %25 = call i32 @ieee_buffer_emptyp(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = call i32 (...) @abort() #3
  unreachable

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %32 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %38 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %37, i32 0, i32 7
  %39 = call i32 @ieee_define_named_type(%struct.ieee_handle* %33, i8* %34, i32 -1, i32 0, i32 %35, i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %29
  %42 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %43 = call i64 @ieee_write_number(%struct.ieee_handle* %42, i32 120)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %47 = call i64 @ieee_write_number(%struct.ieee_handle* %46, i32 64)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %51 = call i64 @ieee_write_number(%struct.ieee_handle* %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %55 = call i64 @ieee_write_number(%struct.ieee_handle* %54, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @ieee_write_number(%struct.ieee_handle* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57, %53, %49, %45, %41, %29
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %4, align 4
  br label %211

64:                                               ; preds = %57
  %65 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %66 = call i32 @ieee_pop_type(%struct.ieee_handle* %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %69 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %68, i32 0, i32 6
  %70 = call i32 @ieee_init_buffer(%struct.ieee_handle* %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %4, align 4
  br label %211

74:                                               ; preds = %64
  %75 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %76 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %157

79:                                               ; preds = %74
  %80 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %81 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %84 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %88 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %89 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %88, i32 0, i32 4
  %90 = call i32 @ieee_change_buffer(%struct.ieee_handle* %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %154

92:                                               ; preds = %79
  %93 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %94 = load i64, i64* @ieee_nn_record, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i64 @ieee_write_byte(%struct.ieee_handle* %93, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %154

98:                                               ; preds = %92
  %99 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @ieee_write_number(%struct.ieee_handle* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %154

103:                                              ; preds = %98
  %104 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %105 = call i64 @ieee_write_id(%struct.ieee_handle* %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %103
  %108 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %109 = load i64, i64* @ieee_atn_record_enum, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @ieee_write_2bytes(%struct.ieee_handle* %108, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %154

113:                                              ; preds = %107
  %114 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @ieee_write_number(%struct.ieee_handle* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %154

118:                                              ; preds = %113
  %119 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %120 = call i64 @ieee_write_number(%struct.ieee_handle* %119, i32 0)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %154

122:                                              ; preds = %118
  %123 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %124 = call i64 @ieee_write_number(%struct.ieee_handle* %123, i32 62)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %122
  %127 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %128 = call i64 @ieee_write_number(%struct.ieee_handle* %127, i32 80)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %126
  %131 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %132 = call i64 @ieee_write_number(%struct.ieee_handle* %131, i32 3)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @ieee_write_asn(%struct.ieee_handle* %135, i32 %136, i32 82)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %134
  %140 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 0, i32 1
  %146 = call i32 @ieee_write_asn(%struct.ieee_handle* %140, i32 %141, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @ieee_write_atn65(%struct.ieee_handle* %149, i32 %150, i8* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %148, %139, %134, %130, %126, %122, %118, %113, %107, %103, %98, %92, %79
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %4, align 4
  br label %211

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %74
  %158 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %159 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %158, i32 0, i32 3
  %160 = call i32 @ieee_buffer_emptyp(i32* %159)
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %166 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %167 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %166, i32 0, i32 3
  %168 = call i32 @ieee_change_buffer(%struct.ieee_handle* %165, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %157
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %4, align 4
  br label %211

172:                                              ; preds = %157
  %173 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %174 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %178 = load i64, i64* @ieee_bb_record_enum, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i64 @ieee_write_byte(%struct.ieee_handle* %177, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %208

182:                                              ; preds = %172
  %183 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 4, i32 6
  %188 = call i64 @ieee_write_byte(%struct.ieee_handle* %183, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %208

190:                                              ; preds = %182
  %191 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %192 = call i64 @ieee_write_number(%struct.ieee_handle* %191, i32 0)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = call i64 @ieee_write_id(%struct.ieee_handle* %195, i8* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %194
  %200 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %201 = call i64 @ieee_write_number(%struct.ieee_handle* %200, i32 0)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %205 = load i32, i32* %11, align 4
  %206 = call i64 @ieee_write_number(%struct.ieee_handle* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br label %208

208:                                              ; preds = %203, %199, %194, %190, %182, %172
  %209 = phi i1 [ false, %199 ], [ false, %194 ], [ false, %190 ], [ false, %182 ], [ false, %172 ], [ %207, %203 ]
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %208, %170, %154, %72, %62
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local i32 @ieee_buffer_emptyp(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ieee_define_named_type(%struct.ieee_handle*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_init_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i64 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i64 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_write_2bytes(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i32) #1

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

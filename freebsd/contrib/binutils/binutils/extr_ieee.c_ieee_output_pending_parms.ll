; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_output_pending_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_output_pending_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, %struct.ieee_pending_parm*, i32, i32, %struct.TYPE_4__* }
%struct.ieee_pending_parm = type { i32, %struct.ieee_pending_parm*, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DEBUG_LOCAL = common dso_local global i32 0, align 4
@DEBUG_REGISTER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ieee_nn_record = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ieee_atn_record_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*)* @ieee_output_pending_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_output_pending_parms(%struct.ieee_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee_handle*, align 8
  %4 = alloca %struct.ieee_pending_parm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee_pending_parm*, align 8
  store %struct.ieee_handle* %0, %struct.ieee_handle** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %11 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %10, i32 0, i32 1
  %12 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  store %struct.ieee_pending_parm* %12, %struct.ieee_pending_parm** %4, align 8
  br label %13

13:                                               ; preds = %68, %1
  %14 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %15 = icmp ne %struct.ieee_pending_parm* %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %13
  %17 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %18 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %20 [
    i32 128, label %22
    i32 131, label %22
    i32 129, label %24
    i32 130, label %24
  ]

20:                                               ; preds = %16
  %21 = call i32 (...) @abort() #3
  unreachable

22:                                               ; preds = %16, %16
  %23 = load i32, i32* @DEBUG_LOCAL, align 4
  store i32 %23, i32* %6, align 4
  br label %26

24:                                               ; preds = %16, %16
  %25 = load i32, i32* @DEBUG_REGISTER, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %28 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %29 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @ieee_push_type(%struct.ieee_handle* %27, i32 %30, i32 0, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %199

37:                                               ; preds = %26
  %38 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %39 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %42 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %40, i64* %45, align 8
  %46 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %47 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %37
  %54 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %55 = bitcast %struct.ieee_handle* %54 to i8*
  %56 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %57 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %61 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ieee_variable(i8* %55, i32 %58, i32 %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %2, align 4
  br label %199

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %70 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %69, i32 0, i32 1
  %71 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %70, align 8
  store %struct.ieee_pending_parm* %71, %struct.ieee_pending_parm** %4, align 8
  br label %13

72:                                               ; preds = %13
  %73 = load i32, i32* %5, align 4
  %74 = icmp ugt i32 %73, 0
  br i1 %74, label %75, label %181

75:                                               ; preds = %72
  %76 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %77 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  %79 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %80 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %84 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %85 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %84, i32 0, i32 3
  %86 = call i32 @ieee_change_buffer(%struct.ieee_handle* %83, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %150

88:                                               ; preds = %75
  %89 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %90 = load i64, i64* @ieee_nn_record, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @ieee_write_byte(%struct.ieee_handle* %89, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %150

94:                                               ; preds = %88
  %95 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @ieee_write_number(%struct.ieee_handle* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %150

99:                                               ; preds = %94
  %100 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %101 = call i32 @ieee_write_id(%struct.ieee_handle* %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %150

103:                                              ; preds = %99
  %104 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %105 = load i64, i64* @ieee_atn_record_enum, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @ieee_write_2bytes(%struct.ieee_handle* %104, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %103
  %110 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @ieee_write_number(%struct.ieee_handle* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %150

114:                                              ; preds = %109
  %115 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %116 = call i32 @ieee_write_number(%struct.ieee_handle* %115, i32 0)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %150

118:                                              ; preds = %114
  %119 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %120 = call i32 @ieee_write_number(%struct.ieee_handle* %119, i32 62)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %118
  %123 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %124 = call i32 @ieee_write_number(%struct.ieee_handle* %123, i32 80)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %122
  %127 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, 3
  %130 = call i32 @ieee_write_number(%struct.ieee_handle* %127, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %126
  %133 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ieee_write_asn(%struct.ieee_handle* %133, i32 %134, i32 66)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %141 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ieee_write_atn65(%struct.ieee_handle* %138, i32 %139, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @ieee_write_asn(%struct.ieee_handle* %146, i32 %147, i32 0)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %145, %137, %132, %126, %122, %118, %114, %109, %103, %99, %94, %88, %75
  %151 = load i32, i32* @FALSE, align 4
  store i32 %151, i32* %2, align 4
  br label %199

152:                                              ; preds = %145
  %153 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %154 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %153, i32 0, i32 1
  %155 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %154, align 8
  store %struct.ieee_pending_parm* %155, %struct.ieee_pending_parm** %4, align 8
  store i32 1, i32* %8, align 4
  br label %156

156:                                              ; preds = %174, %152
  %157 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %158 = icmp ne %struct.ieee_pending_parm* %157, null
  br i1 %158, label %159, label %180

159:                                              ; preds = %156
  %160 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %161 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @ieee_write_asn(%struct.ieee_handle* %165, i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %2, align 4
  br label %199

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %159
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %176 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %175, i32 0, i32 1
  %177 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %176, align 8
  store %struct.ieee_pending_parm* %177, %struct.ieee_pending_parm** %4, align 8
  %178 = load i32, i32* %8, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %156

180:                                              ; preds = %156
  br label %181

181:                                              ; preds = %180, %72
  %182 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %183 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %182, i32 0, i32 1
  %184 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %183, align 8
  store %struct.ieee_pending_parm* %184, %struct.ieee_pending_parm** %4, align 8
  br label %185

185:                                              ; preds = %188, %181
  %186 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %187 = icmp ne %struct.ieee_pending_parm* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %190 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %189, i32 0, i32 1
  %191 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %190, align 8
  store %struct.ieee_pending_parm* %191, %struct.ieee_pending_parm** %9, align 8
  %192 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %4, align 8
  %193 = call i32 @free(%struct.ieee_pending_parm* %192)
  %194 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %9, align 8
  store %struct.ieee_pending_parm* %194, %struct.ieee_pending_parm** %4, align 8
  br label %185

195:                                              ; preds = %185
  %196 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %197 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %196, i32 0, i32 1
  store %struct.ieee_pending_parm* null, %struct.ieee_pending_parm** %197, align 8
  %198 = load i32, i32* @TRUE, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %195, %170, %150, %65, %35
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @ieee_push_type(%struct.ieee_handle*, i32, i32, i32, i32) #2

declare dso_local i32 @ieee_variable(i8*, i32, i32, i32) #2

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #2

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #2

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #2

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #2

declare dso_local i32 @ieee_write_2bytes(%struct.ieee_handle*, i32) #2

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i32) #2

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i32) #2

declare dso_local i32 @free(%struct.ieee_pending_parm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_extended_mips16_next_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_extended_mips16_next_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upk_mips16 = type { i32, i32, i32 }

@itype = common dso_local global i32 0, align 4
@jalxtype = common dso_local global i32 0, align 4
@ritype = common dso_local global i32 0, align 4
@i8type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @extended_mips16_next_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extended_mips16_next_pc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.upk_mips16, align 4
  %10 = alloca %struct.upk_mips16, align 4
  %11 = alloca %struct.upk_mips16, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.upk_mips16, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.upk_mips16, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.upk_mips16, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = lshr i32 %19, 11
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %179 [
    i32 2, label %22
    i32 3, label %44
    i32 4, label %65
    i32 5, label %87
    i32 12, label %109
    i32 29, label %140
    i32 30, label %171
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @itype, align 4
  %27 = call i32 @unpack_mips16(i32 %23, i32 %24, i32 %25, i32 %26, %struct.upk_mips16* %9)
  %28 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 2048
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 3839
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %22
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 1
  %41 = add nsw i32 %40, 2
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %182

44:                                               ; preds = %3
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @jalxtype, align 4
  %49 = call i32 @unpack_mips16(i32 %45, i32 %46, i32 %47, i32 %48, %struct.upk_mips16* %10)
  %50 = load i32, i32* %4, align 4
  %51 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @add_offset_16(i32 %50, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = lshr i32 %54, 10
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, -2
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %44
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %182

65:                                               ; preds = %3
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ritype, align 4
  %70 = call i32 @unpack_mips16(i32 %66, i32 %67, i32 %68, i32 %69, %struct.upk_mips16* %11)
  %71 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %11, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @read_signed_register(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 1
  %80 = add nsw i32 %79, 2
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %86

83:                                               ; preds = %65
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %76
  br label %182

87:                                               ; preds = %3
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @ritype, align 4
  %92 = call i32 @unpack_mips16(i32 %88, i32 %89, i32 %90, i32 %91, %struct.upk_mips16* %13)
  %93 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %13, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @read_signed_register(i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %13, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 1
  %102 = add nsw i32 %101, 2
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %4, align 4
  br label %108

105:                                              ; preds = %87
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %98
  br label %182

109:                                              ; preds = %3
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @i8type, align 4
  %114 = call i32 @unpack_mips16(i32 %110, i32 %111, i32 %112, i32 %113, %struct.upk_mips16* %15)
  %115 = call i32 @read_signed_register(i32 24)
  store i32 %115, i32* %16, align 4
  %116 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %15, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* %16, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119, %109
  %123 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %15, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126, %119
  %130 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %15, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 1
  %133 = add nsw i32 %132, 2
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %4, align 4
  br label %139

136:                                              ; preds = %126, %122
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %136, %129
  br label %182

140:                                              ; preds = %3
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, 31
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %140
  %146 = load i32, i32* %6, align 4
  %147 = lshr i32 %146, 8
  %148 = and i32 %147, 7
  %149 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %17, i32 0, i32 1
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %6, align 4
  %151 = lshr i32 %150, 5
  %152 = and i32 %151, 7
  %153 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %17, i32 0, i32 2
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %17, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  switch i32 %155, label %163 [
    i32 0, label %156
    i32 1, label %159
    i32 2, label %160
  ]

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %17, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %18, align 4
  br label %164

159:                                              ; preds = %145
  store i32 31, i32* %18, align 4
  br label %164

160:                                              ; preds = %145
  %161 = getelementptr inbounds %struct.upk_mips16, %struct.upk_mips16* %17, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %18, align 4
  br label %164

163:                                              ; preds = %145
  store i32 31, i32* %18, align 4
  br label %164

164:                                              ; preds = %163, %160, %159, %156
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @read_signed_register(i32 %165)
  store i32 %166, i32* %4, align 4
  br label %170

167:                                              ; preds = %140
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 2
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %167, %164
  br label %182

171:                                              ; preds = %3
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @fetch_mips_16(i32 %176)
  %178 = call i32 @extended_mips16_next_pc(i32 %174, i32 %175, i32 %177)
  store i32 %178, i32* %4, align 4
  br label %182

179:                                              ; preds = %3
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 2
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %179, %171, %170, %139, %108, %86, %64, %38
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @unpack_mips16(i32, i32, i32, i32, %struct.upk_mips16*) #1

declare dso_local i32 @add_offset_16(i32, i32) #1

declare dso_local i32 @read_signed_register(i32) #1

declare dso_local i32 @fetch_mips_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

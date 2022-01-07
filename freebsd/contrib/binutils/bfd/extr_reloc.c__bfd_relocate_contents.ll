; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c__bfd_relocate_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c__bfd_relocate_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32, i32 }

@bfd_reloc_ok = common dso_local global i32 0, align 4
@complain_overflow_dont = common dso_local global i32 0, align 4
@bfd_reloc_overflow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_relocate_contents(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = sub i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = call i32 @bfd_get_reloc_size(%struct.TYPE_4__* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %38 [
    i32 0, label %39
    i32 1, label %41
    i32 2, label %45
    i32 4, label %49
    i32 8, label %53
  ]

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %34, %38
  %40 = call i32 (...) @abort() #3
  unreachable

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @bfd_get_8(i32* %42, i32* %43)
  store i32 %44, i32* %10, align 4
  br label %55

45:                                               ; preds = %34
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @bfd_get_16(i32* %46, i32* %47)
  store i32 %48, i32* %10, align 4
  br label %55

49:                                               ; preds = %34
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @bfd_get_32(i32* %50, i32* %51)
  store i32 %52, i32* %10, align 4
  br label %55

53:                                               ; preds = %34
  %54 = call i32 (...) @abort() #3
  unreachable

55:                                               ; preds = %49, %45, %41
  %56 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @complain_overflow_dont, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %168

62:                                               ; preds = %55
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @N_ONES(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = xor i32 %67, -1
  store i32 %68, i32* %16, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @bfd_arch_bits_per_address(i32* %69)
  %71 = call i32 @N_ONES(i32 %70)
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %14, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %12, align 4
  %78 = lshr i32 %76, %77
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %79, %82
  %84 = load i32, i32* %14, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %13, align 4
  %87 = lshr i32 %85, %86
  store i32 %87, i32* %19, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %165 [
    i32 129, label %91
    i32 130, label %95
    i32 128, label %148
  ]

91:                                               ; preds = %62
  %92 = load i32, i32* %15, align 4
  %93 = lshr i32 %92, 1
  %94 = xor i32 %93, -1
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %62, %91
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %16, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %12, align 4
  %105 = lshr i32 %103, %104
  %106 = load i32, i32* %16, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %102, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %109, %101, %95
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, -1
  %116 = lshr i32 %115, 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %116, %119
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %17, align 4
  %123 = lshr i32 %122, %121
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %17, align 4
  %126 = xor i32 %124, %125
  %127 = load i32, i32* %17, align 4
  %128 = sub i32 %126, %127
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %19, align 4
  %131 = add i32 %129, %130
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %19, align 4
  %134 = xor i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %20, align 4
  %138 = xor i32 %136, %137
  %139 = and i32 %135, %138
  %140 = load i32, i32* %16, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* %14, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %111
  %146 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %145, %111
  br label %167

148:                                              ; preds = %62
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %19, align 4
  %151 = add i32 %149, %150
  %152 = load i32, i32* %14, align 4
  %153 = and i32 %151, %152
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %19, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %20, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %16, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %148
  %163 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %162, %148
  br label %167

165:                                              ; preds = %62
  %166 = call i32 (...) @abort() #3
  unreachable

167:                                              ; preds = %164, %147
  br label %168

168:                                              ; preds = %167, %55
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %7, align 4
  %171 = lshr i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %7, align 4
  %174 = shl i32 %173, %172
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = xor i32 %178, -1
  %180 = and i32 %175, %179
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %181, %184
  %186 = load i32, i32* %7, align 4
  %187 = add i32 %185, %186
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %187, %190
  %192 = or i32 %180, %191
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %9, align 4
  switch i32 %193, label %194 [
    i32 1, label %196
    i32 2, label %201
    i32 4, label %206
    i32 8, label %211
  ]

194:                                              ; preds = %168
  %195 = call i32 (...) @abort() #3
  unreachable

196:                                              ; preds = %168
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %10, align 4
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @bfd_put_8(i32* %197, i32 %198, i32* %199)
  br label %213

201:                                              ; preds = %168
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i32*, i32** %8, align 8
  %205 = call i32 @bfd_put_16(i32* %202, i32 %203, i32* %204)
  br label %213

206:                                              ; preds = %168
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i32*, i32** %8, align 8
  %210 = call i32 @bfd_put_32(i32* %207, i32 %208, i32* %209)
  br label %213

211:                                              ; preds = %168
  %212 = call i32 (...) @abort() #3
  unreachable

213:                                              ; preds = %206, %201, %196
  %214 = load i32, i32* %11, align 4
  ret i32 %214
}

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_4__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_get_8(i32*, i32*) #1

declare dso_local i32 @bfd_get_16(i32*, i32*) #1

declare dso_local i32 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @N_ONES(i32) #1

declare dso_local i32 @bfd_arch_bits_per_address(i32*) #1

declare dso_local i32 @bfd_put_8(i32*, i32, i32*) #1

declare dso_local i32 @bfd_put_16(i32*, i32, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

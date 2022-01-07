; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_maven.c_maven_init_TV.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_maven.c_maven_init_TV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mavenregs = type { i64 }

@MATROXFB_OUTPUT_MODE_PAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.mavenregs*)* @maven_init_TV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maven_init_TV(%struct.i2c_client* %0, %struct.mavenregs* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mavenregs*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.mavenregs* %1, %struct.mavenregs** %4, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call i32 @maven_set_reg(%struct.i2c_client* %6, i32 62, i32 1)
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call i32 @maven_get_reg(%struct.i2c_client* %8, i32 130)
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call i32 @maven_set_reg(%struct.i2c_client* %10, i32 140, i32 0)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call i32 @maven_get_reg(%struct.i2c_client* %12, i32 148)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = call i32 @maven_set_reg(%struct.i2c_client* %14, i32 148, i32 162)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = call i32 @maven_set_reg_pair(%struct.i2c_client* %16, i32 142, i32 7935)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = call i32 @maven_set_reg(%struct.i2c_client* %18, i32 198, i32 1)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = call i32 @maven_get_reg(%struct.i2c_client* %20, i32 6)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = call i32 @maven_set_reg(%struct.i2c_client* %22, i32 6, i32 249)
  %24 = call i32 @LR(i32 0)
  %25 = call i32 @LR(i32 1)
  %26 = call i32 @LR(i32 2)
  %27 = call i32 @LR(i32 3)
  %28 = call i32 @LR(i32 4)
  %29 = call i32 @LR(i32 44)
  %30 = call i32 @LR(i32 8)
  %31 = call i32 @LR(i32 10)
  %32 = call i32 @LR(i32 9)
  %33 = call i32 @LR(i32 41)
  %34 = call i32 @LRP(i32 49)
  %35 = call i32 @LRP(i32 23)
  %36 = call i32 @LR(i32 11)
  %37 = call i32 @LR(i32 12)
  %38 = load %struct.mavenregs*, %struct.mavenregs** %4, align 8
  %39 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MATROXFB_OUTPUT_MODE_PAL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = call i32 @maven_set_reg(%struct.i2c_client* %44, i32 53, i32 16)
  br label %49

46:                                               ; preds = %2
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = call i32 @maven_set_reg(%struct.i2c_client* %47, i32 53, i32 15)
  br label %49

49:                                               ; preds = %46, %43
  %50 = call i32 @LRP(i32 16)
  %51 = call i32 @LRP(i32 14)
  %52 = call i32 @LRP(i32 30)
  %53 = call i32 @LR(i32 32)
  %54 = call i32 @LR(i32 34)
  %55 = call i32 @LR(i32 37)
  %56 = call i32 @LR(i32 52)
  %57 = call i32 @LR(i32 51)
  %58 = call i32 @LR(i32 25)
  %59 = call i32 @LR(i32 18)
  %60 = call i32 @LR(i32 59)
  %61 = call i32 @LR(i32 19)
  %62 = call i32 @LR(i32 57)
  %63 = call i32 @LR(i32 29)
  %64 = call i32 @LR(i32 58)
  %65 = call i32 @LR(i32 36)
  %66 = call i32 @LR(i32 20)
  %67 = call i32 @LR(i32 21)
  %68 = call i32 @LR(i32 22)
  %69 = call i32 @LRP(i32 45)
  %70 = call i32 @LRP(i32 47)
  %71 = call i32 @LR(i32 26)
  %72 = call i32 @LR(i32 27)
  %73 = call i32 @LR(i32 28)
  %74 = call i32 @LR(i32 35)
  %75 = call i32 @LR(i32 38)
  %76 = call i32 @LR(i32 40)
  %77 = call i32 @LR(i32 39)
  %78 = call i32 @LR(i32 33)
  %79 = call i32 @LRP(i32 42)
  %80 = load %struct.mavenregs*, %struct.mavenregs** %4, align 8
  %81 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MATROXFB_OUTPUT_MODE_PAL, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %49
  %86 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %87 = call i32 @maven_set_reg(%struct.i2c_client* %86, i32 53, i32 29)
  br label %91

88:                                               ; preds = %49
  %89 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %90 = call i32 @maven_set_reg(%struct.i2c_client* %89, i32 53, i32 28)
  br label %91

91:                                               ; preds = %88, %85
  %92 = call i32 @LRP(i32 60)
  %93 = call i32 @LR(i32 55)
  %94 = call i32 @LR(i32 56)
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = call i32 @maven_set_reg(%struct.i2c_client* %95, i32 179, i32 1)
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = call i32 @maven_get_reg(%struct.i2c_client* %97, i32 176)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = call i32 @maven_set_reg(%struct.i2c_client* %99, i32 176, i32 8)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = call i32 @maven_get_reg(%struct.i2c_client* %101, i32 185)
  %103 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %104 = call i32 @maven_set_reg(%struct.i2c_client* %103, i32 185, i32 120)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %106 = call i32 @maven_get_reg(%struct.i2c_client* %105, i32 191)
  %107 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %108 = call i32 @maven_set_reg(%struct.i2c_client* %107, i32 191, i32 2)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = call i32 @maven_get_reg(%struct.i2c_client* %109, i32 148)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = call i32 @maven_set_reg(%struct.i2c_client* %111, i32 148, i32 179)
  %113 = call i32 @LR(i32 128)
  %114 = call i32 @LR(i32 129)
  %115 = call i32 @LR(i32 130)
  %116 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %117 = call i32 @maven_set_reg(%struct.i2c_client* %116, i32 140, i32 32)
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = call i32 @maven_get_reg(%struct.i2c_client* %118, i32 141)
  %120 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %121 = call i32 @maven_set_reg(%struct.i2c_client* %120, i32 141, i32 16)
  %122 = call i32 @LR(i32 144)
  %123 = call i32 @LR(i32 145)
  %124 = call i32 @LR(i32 146)
  %125 = call i32 @LRP(i32 154)
  %126 = call i32 @LRP(i32 156)
  %127 = call i32 @LRP(i32 158)
  %128 = call i32 @LRP(i32 160)
  %129 = call i32 @LRP(i32 162)
  %130 = call i32 @LRP(i32 164)
  %131 = call i32 @LRP(i32 166)
  %132 = call i32 @LRP(i32 168)
  %133 = call i32 @LRP(i32 152)
  %134 = call i32 @LRP(i32 174)
  %135 = call i32 @LRP(i32 150)
  %136 = call i32 @LRP(i32 170)
  %137 = call i32 @LRP(i32 172)
  %138 = call i32 @LR(i32 190)
  %139 = call i32 @LR(i32 194)
  %140 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %141 = call i32 @maven_get_reg(%struct.i2c_client* %140, i32 141)
  %142 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %143 = call i32 @maven_set_reg(%struct.i2c_client* %142, i32 141, i32 4)
  %144 = call i32 @LR(i32 32)
  %145 = call i32 @LR(i32 34)
  %146 = call i32 @LR(i32 147)
  %147 = call i32 @LR(i32 32)
  %148 = call i32 @LR(i32 34)
  %149 = call i32 @LR(i32 37)
  %150 = call i32 @LRP(i32 14)
  %151 = call i32 @LRP(i32 30)
  %152 = call i32 @LRP(i32 14)
  %153 = call i32 @LRP(i32 30)
  %154 = call i32 @LR(i32 131)
  %155 = call i32 @LR(i32 132)
  %156 = call i32 @LR(i32 133)
  %157 = call i32 @LR(i32 134)
  %158 = call i32 @LR(i32 135)
  %159 = call i32 @LR(i32 136)
  %160 = call i32 @LR(i32 137)
  %161 = call i32 @LR(i32 138)
  %162 = call i32 @LR(i32 139)
  %163 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %164 = call i32 @maven_get_reg(%struct.i2c_client* %163, i32 141)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, 20
  store i32 %166, i32* %5, align 4
  %167 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @maven_set_reg(%struct.i2c_client* %167, i32 141, i32 %168)
  %170 = call i32 @LR(i32 51)
  %171 = call i32 @LR(i32 25)
  %172 = call i32 @LR(i32 18)
  %173 = call i32 @LR(i32 59)
  %174 = call i32 @LR(i32 19)
  %175 = call i32 @LR(i32 57)
  %176 = call i32 @LR(i32 29)
  %177 = call i32 @LR(i32 58)
  %178 = call i32 @LR(i32 36)
  %179 = call i32 @LR(i32 20)
  %180 = call i32 @LR(i32 21)
  %181 = call i32 @LR(i32 22)
  %182 = call i32 @LRP(i32 45)
  %183 = call i32 @LRP(i32 47)
  %184 = call i32 @LR(i32 26)
  %185 = call i32 @LR(i32 27)
  %186 = call i32 @LR(i32 28)
  %187 = call i32 @LR(i32 35)
  %188 = call i32 @LR(i32 38)
  %189 = call i32 @LR(i32 40)
  %190 = call i32 @LR(i32 39)
  %191 = call i32 @LR(i32 33)
  %192 = call i32 @LRP(i32 42)
  %193 = load %struct.mavenregs*, %struct.mavenregs** %4, align 8
  %194 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MATROXFB_OUTPUT_MODE_PAL, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %91
  %199 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %200 = call i32 @maven_set_reg(%struct.i2c_client* %199, i32 53, i32 29)
  br label %204

201:                                              ; preds = %91
  %202 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %203 = call i32 @maven_set_reg(%struct.i2c_client* %202, i32 53, i32 28)
  br label %204

204:                                              ; preds = %201, %198
  %205 = call i32 @LRP(i32 60)
  %206 = call i32 @LR(i32 55)
  %207 = call i32 @LR(i32 56)
  %208 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %209 = call i32 @maven_get_reg(%struct.i2c_client* %208, i32 176)
  %210 = call i32 @LR(i32 176)
  %211 = call i32 @LR(i32 144)
  %212 = call i32 @LR(i32 190)
  %213 = call i32 @LR(i32 194)
  %214 = call i32 @LRP(i32 154)
  %215 = call i32 @LRP(i32 162)
  %216 = call i32 @LRP(i32 158)
  %217 = call i32 @LRP(i32 166)
  %218 = call i32 @LRP(i32 170)
  %219 = call i32 @LRP(i32 172)
  %220 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %221 = call i32 @maven_set_reg(%struct.i2c_client* %220, i32 62, i32 0)
  %222 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %223 = call i32 @maven_set_reg(%struct.i2c_client* %222, i32 149, i32 32)
  ret void
}

declare dso_local i32 @maven_set_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @maven_get_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @maven_set_reg_pair(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LR(i32) #1

declare dso_local i32 @LRP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

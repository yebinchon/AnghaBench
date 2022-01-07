; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_display_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_display_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seg_descr = type { i32, i32, i32, i32, i64, i32, i32, i32, i64 }
%struct.gate_descr = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"0x000: null descriptor\0A\00", align 1
@display_descriptor.allowed_descriptors = internal global [3 x i32] [i32 -9474, i32 49376, i32 -9478], align 4
@prog_has_started = common dso_local global i64 0, align 8
@a_tss = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%03x: \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"base=0x%02x%02x%04x limit=0x%08lx\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c" 16-bit TSS  (task %sactive)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" LDT\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"selector=0x%04x  offs=0x%04x%04x\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c" 16-bit Call Gate (params=%d)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"TSS selector=0x%04x\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Task Gate\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c" 16-bit %s Gate\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Trap\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c" 32-bit TSS (task %sactive)\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c" 32-bit Call Gate (params=%d)\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c" 32-bit %s Gate\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c" %s-bit Data (%s Exp-%s%s)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Read/Write,\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Read-Only, \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c", N.Acc\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c" %s-bit Code (%s,  %sConf%s)\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Exec/Read\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Exec-Only\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"N.\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Unknown type 0x%02x\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Segment not present\0A\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"Segment type 0x%02x is invalid in this table\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"0x%03x: Cannot read this descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @display_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_descriptor(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.seg_descr, align 8
  %10 = alloca %struct.gate_descr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @puts_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %297

20:                                               ; preds = %15, %4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @get_descriptor(i64 %21, i32 %22, %struct.seg_descr* %9)
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %289

25:                                               ; preds = %20
  %26 = load i64, i64* @prog_has_started, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @a_tss, i32 0, i32 0), align 4
  %30 = and i32 %29, 3
  br label %34

31:                                               ; preds = %25
  %32 = call i32 (...) @_my_cs()
  %33 = and i32 %32, 3
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  store i32 %35, i32* %11, align 4
  %36 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 16
  %39 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %38, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %12, align 8
  %43 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %254

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* @display_descriptor.allowed_descriptors, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 1, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %254

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  br label %73

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %62, 8
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, 4
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  %72 = or i32 %63, %71
  br label %73

73:                                               ; preds = %70, %59
  %74 = phi i32 [ %60, %59 ], [ %72, %70 ]
  %75 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i64, i64* %12, align 8
  %81 = shl i64 %80, 12
  %82 = or i64 %81, 4095
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %111, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %111, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 11
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %105, 16
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 32
  br i1 %110, label %111, label %120

111:                                              ; preds = %107, %99, %95, %91, %87, %83
  %112 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %12, align 8
  %119 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %115, i32 %117, i64 %118)
  br label %120

120:                                              ; preds = %111, %107, %103
  %121 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %248 [
    i32 1, label %123
    i32 3, label %123
    i32 2, label %130
    i32 4, label %132
    i32 5, label %144
    i32 6, label %149
    i32 7, label %149
    i32 9, label %164
    i32 11, label %164
    i32 12, label %171
    i32 14, label %183
    i32 15, label %183
    i32 16, label %198
    i32 17, label %198
    i32 18, label %198
    i32 19, label %198
    i32 20, label %198
    i32 21, label %198
    i32 22, label %198
    i32 23, label %198
    i32 24, label %223
    i32 25, label %223
    i32 26, label %223
    i32 27, label %223
    i32 28, label %223
    i32 29, label %223
    i32 30, label %223
    i32 31, label %223
  ]

123:                                              ; preds = %120, %120
  %124 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 3
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %129 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  br label %252

130:                                              ; preds = %120
  %131 = call i32 @puts_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %252

132:                                              ; preds = %120
  %133 = call i32 @memcpy(%struct.gate_descr* %10, %struct.seg_descr* %9, i32 16)
  %134 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %135, i32 %137, i32 %139)
  %141 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %142)
  br label %252

144:                                              ; preds = %120
  %145 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %146)
  %148 = call i32 @printfi_filtered(i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %252

149:                                              ; preds = %120, %120
  %150 = call i32 @memcpy(%struct.gate_descr* %10, %struct.seg_descr* %9, i32 16)
  %151 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %152, i32 %154, i32 %156)
  %158 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 6
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %163 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %162)
  br label %252

164:                                              ; preds = %120, %120
  %165 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 3
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %170 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %169)
  br label %252

171:                                              ; preds = %120
  %172 = call i32 @memcpy(%struct.gate_descr* %10, %struct.seg_descr* %9, i32 16)
  %173 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %174, i32 %176, i32 %178)
  %180 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %181)
  br label %252

183:                                              ; preds = %120, %120
  %184 = call i32 @memcpy(%struct.gate_descr* %10, %struct.seg_descr* %9, i32 16)
  %185 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.gate_descr, %struct.gate_descr* %10, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %186, i32 %188, i32 %190)
  %192 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 14
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %197 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* %196)
  br label %252

198:                                              ; preds = %120, %120, %120, %120, %120, %120, %120, %120
  %199 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)
  %204 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 2
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)
  %210 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 4
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)
  %216 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, 1
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)
  %222 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* %203, i8* %209, i8* %215, i8* %221)
  br label %252

223:                                              ; preds = %120, %120, %120, %120, %120, %120, %120, %120
  %224 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)
  %229 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = and i32 %230, 2
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)
  %235 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = and i32 %236, 4
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)
  %241 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 1
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)
  %247 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i8* %228, i8* %234, i8* %240, i8* %246)
  br label %252

248:                                              ; preds = %120
  %249 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %248, %223, %198, %183, %171, %164, %149, %144, %132, %130, %123
  %253 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  br label %288

254:                                              ; preds = %46, %34
  %255 = load i32, i32* %8, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %287

257:                                              ; preds = %254
  %258 = load i32, i32* %5, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = load i32, i32* %7, align 4
  br label %274

262:                                              ; preds = %257
  %263 = load i32, i32* %7, align 4
  %264 = mul nsw i32 %263, 8
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i32, i32* %11, align 4
  %269 = or i32 %268, 4
  br label %271

270:                                              ; preds = %262
  br label %271

271:                                              ; preds = %270, %267
  %272 = phi i32 [ %269, %267 ], [ 0, %270 ]
  %273 = or i32 %264, %272
  br label %274

274:                                              ; preds = %271, %260
  %275 = phi i32 [ %261, %260 ], [ %273, %271 ]
  %276 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %275)
  %277 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %274
  %281 = call i32 @puts_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  br label %286

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.seg_descr, %struct.seg_descr* %9, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0), i32 %284)
  br label %286

286:                                              ; preds = %282, %280
  br label %287

287:                                              ; preds = %286, %254
  br label %288

288:                                              ; preds = %287, %252
  br label %296

289:                                              ; preds = %20
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, i32* %7, align 4
  %294 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %292, %289
  br label %296

296:                                              ; preds = %295, %288
  br label %297

297:                                              ; preds = %296, %18
  ret void
}

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @get_descriptor(i64, i32, %struct.seg_descr*) #1

declare dso_local i32 @_my_cs(...) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.gate_descr*, %struct.seg_descr*, i32) #1

declare dso_local i32 @printfi_filtered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

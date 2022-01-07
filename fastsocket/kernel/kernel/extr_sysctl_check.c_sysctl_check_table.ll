; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_check_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_check_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { i32 }
%struct.ctl_table = type { i32, i64, i64, %struct.ctl_table*, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Parent without procname\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Parent without ctl_name\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"No procname\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Directory with data?\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Directory with maxlen?\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Writable sysctl directory\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Directory with proc_handler\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Directory with strategy\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Directory with extra1\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Directory with extra2\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Inconsistent directory names\00", align 1
@sysctl_data = common dso_local global i64 0, align 8
@sysctl_string = common dso_local global i64 0, align 8
@sysctl_intvec = common dso_local global i64 0, align 8
@sysctl_jiffies = common dso_local global i64 0, align 8
@sysctl_ms_jiffies = common dso_local global i64 0, align 8
@proc_dostring = common dso_local global i64 0, align 8
@proc_dointvec = common dso_local global i64 0, align 8
@proc_dointvec_minmax = common dso_local global i64 0, align 8
@proc_dointvec_jiffies = common dso_local global i64 0, align 8
@proc_dointvec_userhz_jiffies = common dso_local global i64 0, align 8
@proc_dointvec_ms_jiffies = common dso_local global i64 0, align 8
@proc_doulongvec_minmax = common dso_local global i64 0, align 8
@proc_doulongvec_ms_jiffies_minmax = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"No data\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"No maxlen\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"bogus .mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_check_table(%struct.nsproxy* %0, %struct.ctl_table* %1) #0 {
  %3 = alloca %struct.nsproxy*, align 8
  %4 = alloca %struct.ctl_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.nsproxy* %0, %struct.nsproxy** %3, align 8
  store %struct.ctl_table* %1, %struct.ctl_table** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %273, %2
  %8 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %9 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ true, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %276

19:                                               ; preds = %17
  store i8* null, i8** %6, align 8
  %20 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %21 = call i32 @sysctl_repair_table(%struct.ctl_table* %20)
  %22 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %23 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %22, i32 0, i32 10
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %28 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %33 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %32, i32 0, i32 10
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %40 = call i32 @set_fail(i8** %6, %struct.ctl_table* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %31, %26
  %42 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %43 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %48 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %47, i32 0, i32 10
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %55 = call i32 @set_fail(i8** %6, %struct.ctl_table* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46, %41
  br label %57

57:                                               ; preds = %56, %19
  %58 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %59 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %64 = call i32 @set_fail(i8** %6, %struct.ctl_table* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %67 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %66, i32 0, i32 3
  %68 = load %struct.ctl_table*, %struct.ctl_table** %67, align 8
  %69 = icmp ne %struct.ctl_table* %68, null
  br i1 %69, label %70, label %142

70:                                               ; preds = %65
  %71 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %72 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %77 = call i32 @set_fail(i8** %6, %struct.ctl_table* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %80 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %85 = call i32 @set_fail(i8** %6, %struct.ctl_table* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %88 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @S_IRUGO, align 4
  %91 = load i32, i32* @S_IXUGO, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %95 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %100 = call i32 @set_fail(i8** %6, %struct.ctl_table* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %86
  %102 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %103 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %108 = call i32 @set_fail(i8** %6, %struct.ctl_table* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %111 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %116 = call i32 @set_fail(i8** %6, %struct.ctl_table* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %119 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %124 = call i32 @set_fail(i8** %6, %struct.ctl_table* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %127 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %132 = call i32 @set_fail(i8** %6, %struct.ctl_table* %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %125
  %134 = load %struct.nsproxy*, %struct.nsproxy** %3, align 8
  %135 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %136 = call i64 @sysctl_check_dir(%struct.nsproxy* %134, %struct.ctl_table* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %140 = call i32 @set_fail(i8** %6, %struct.ctl_table* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %133
  br label %241

142:                                              ; preds = %65
  %143 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %144 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @sysctl_data, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %220, label %148

148:                                              ; preds = %142
  %149 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %150 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @sysctl_string, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %220, label %154

154:                                              ; preds = %148
  %155 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %156 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @sysctl_intvec, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %220, label %160

160:                                              ; preds = %154
  %161 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %162 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @sysctl_jiffies, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %220, label %166

166:                                              ; preds = %160
  %167 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %168 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @sysctl_ms_jiffies, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %220, label %172

172:                                              ; preds = %166
  %173 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %174 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @proc_dostring, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %220, label %178

178:                                              ; preds = %172
  %179 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %180 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @proc_dointvec, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %220, label %184

184:                                              ; preds = %178
  %185 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %186 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @proc_dointvec_minmax, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %220, label %190

190:                                              ; preds = %184
  %191 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %192 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @proc_dointvec_jiffies, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %220, label %196

196:                                              ; preds = %190
  %197 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %198 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @proc_dointvec_userhz_jiffies, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %220, label %202

202:                                              ; preds = %196
  %203 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %204 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @proc_dointvec_ms_jiffies, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %220, label %208

208:                                              ; preds = %202
  %209 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %210 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @proc_doulongvec_minmax, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %220, label %214

214:                                              ; preds = %208
  %215 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %216 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @proc_doulongvec_ms_jiffies_minmax, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %237

220:                                              ; preds = %214, %208, %202, %196, %190, %184, %178, %172, %166, %160, %154, %148, %142
  %221 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %222 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %221, i32 0, i32 7
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %220
  %226 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %227 = call i32 @set_fail(i8** %6, %struct.ctl_table* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %220
  %229 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %230 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %229, i32 0, i32 6
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %235 = call i32 @set_fail(i8** %6, %struct.ctl_table* %234, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %236

236:                                              ; preds = %233, %228
  br label %237

237:                                              ; preds = %236, %214
  %238 = load %struct.nsproxy*, %struct.nsproxy** %3, align 8
  %239 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %240 = call i32 @sysctl_check_leaf(%struct.nsproxy* %238, %struct.ctl_table* %239, i8** %6)
  br label %241

241:                                              ; preds = %237, %141
  %242 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %243 = call i32 @sysctl_check_bin_path(%struct.ctl_table* %242, i8** %6)
  %244 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %245 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp sgt i32 %246, 511
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %250 = call i32 @set_fail(i8** %6, %struct.ctl_table* %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %241
  %252 = load i8*, i8** %6, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %256 = call i32 @set_fail(i8** %6, %struct.ctl_table* %255, i8* null)
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %5, align 4
  br label %259

259:                                              ; preds = %254, %251
  %260 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %261 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %260, i32 0, i32 3
  %262 = load %struct.ctl_table*, %struct.ctl_table** %261, align 8
  %263 = icmp ne %struct.ctl_table* %262, null
  br i1 %263, label %264, label %272

264:                                              ; preds = %259
  %265 = load %struct.nsproxy*, %struct.nsproxy** %3, align 8
  %266 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %267 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %266, i32 0, i32 3
  %268 = load %struct.ctl_table*, %struct.ctl_table** %267, align 8
  %269 = call i32 @sysctl_check_table(%struct.nsproxy* %265, %struct.ctl_table* %268)
  %270 = load i32, i32* %5, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %5, align 4
  br label %272

272:                                              ; preds = %264, %259
  br label %273

273:                                              ; preds = %272
  %274 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %275 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %274, i32 1
  store %struct.ctl_table* %275, %struct.ctl_table** %4, align 8
  br label %7

276:                                              ; preds = %17
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @sysctl_repair_table(%struct.ctl_table*) #1

declare dso_local i32 @set_fail(i8**, %struct.ctl_table*, i8*) #1

declare dso_local i64 @sysctl_check_dir(%struct.nsproxy*, %struct.ctl_table*) #1

declare dso_local i32 @sysctl_check_leaf(%struct.nsproxy*, %struct.ctl_table*, i8**) #1

declare dso_local i32 @sysctl_check_bin_path(%struct.ctl_table*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
